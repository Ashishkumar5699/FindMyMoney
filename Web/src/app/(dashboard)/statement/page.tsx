'use client';

import { useEffect, useState } from 'react';
import { api } from '@/lib/api';

interface Expense { id: string; amount: number; category: string; subCategory: string; description: string; date: string; }
interface Income { id: string; amount: number; source: string; description: string; date: string; }
interface Emi { id: string; loanName: string; bankName: string; emiAmount: number; nextDueDate: string; status: string; }
interface Investment { id: string; name: string; principalAmount: number; expectedReturnAmount: number; actualReturnAmount?: number; startDate: string; closedAt?: string; status: string; }

type Row = { type: 'income' | 'expense' | 'investment'; label: string; sub: string; amount: number; date: string; isInflow: boolean; };
type SortCol = 'date' | 'type' | 'label' | 'description' | 'amount';
type SortDir = 'asc' | 'desc';

const now = new Date();

const COLUMNS: { key: SortCol; label: string }[] = [
  { key: 'date', label: 'Date' },
  { key: 'type', label: 'Type' },
  { key: 'label', label: 'Label' },
  { key: 'description', label: 'Description' },
  { key: 'amount', label: 'Amount' },
];

function sortRows(rows: Row[], col: SortCol, dir: SortDir): Row[] {
  return [...rows].sort((a, b) => {
    let cmp = 0;
    switch (col) {
      case 'date':   cmp = new Date(a.date).getTime() - new Date(b.date).getTime(); break;
      case 'type':   cmp = a.type.localeCompare(b.type); break;
      case 'label':  cmp = a.label.localeCompare(b.label); break;
      case 'description': cmp = (a.sub || '').localeCompare(b.sub || ''); break;
      case 'amount': cmp = a.amount - b.amount; break;
    }
    return dir === 'asc' ? cmp : -cmp;
  });
}

function SortIcon({ col, sortCol, sortDir }: { col: SortCol; sortCol: SortCol; sortDir: SortDir }) {
  const active = col === sortCol;
  return (
    <span style={{ display: 'inline-flex', flexDirection: 'column', marginLeft: 6, gap: 1, verticalAlign: 'middle', lineHeight: 1 }}>
      <svg width="8" height="5" viewBox="0 0 8 5" style={{ opacity: active && sortDir === 'asc' ? 1 : 0.25 }}>
        <path d="M4 0L8 5H0L4 0Z" fill="currentColor" />
      </svg>
      <svg width="8" height="5" viewBox="0 0 8 5" style={{ opacity: active && sortDir === 'desc' ? 1 : 0.25 }}>
        <path d="M4 5L0 0H8L4 5Z" fill="currentColor" />
      </svg>
    </span>
  );
}

export default function StatementPage() {
  const [expenses, setExpenses] = useState<Expense[]>([]);
  const [incomes, setIncomes] = useState<Income[]>([]);
  const [emis, setEmis] = useState<Emi[]>([]);
  const [investments, setInvestments] = useState<Investment[]>([]);
  const [loading, setLoading] = useState(true);
  const [year, setYear] = useState(now.getFullYear());
  const [month, setMonth] = useState(now.getMonth() + 1);
  const [sortCol, setSortCol] = useState<SortCol>('date');
  const [sortDir, setSortDir] = useState<SortDir>('desc');

  async function load() {
    setLoading(true);
    try {
      const [e, i, em, inv] = await Promise.all([
        api.get<Expense[]>(`/api/expenses?year=${year}&month=${month}`),
        api.get<Income[]>(`/api/incomes?year=${year}&month=${month}`),
        api.get<Emi[]>('/api/emis?status=Active'),
        api.get<Investment[]>('/api/investments'),
      ]);
      setExpenses(e ?? []);
      setIncomes(i ?? []);
      setEmis(em ?? []);
      setInvestments(inv ?? []);
    } catch { } finally { setLoading(false); }
  }

  useEffect(() => { load(); }, [year, month]);

  function handleSort(col: SortCol) {
    if (sortCol === col) {
      setSortDir(d => d === 'asc' ? 'desc' : 'asc');
    } else {
      setSortCol(col);
      setSortDir('asc');
    }
  }

  // Investment rows: funded this month = outflow; closed this month = inflow
  const invRows: Row[] = investments.flatMap(inv => {
    const rows: Row[] = [];
    const start = new Date(inv.startDate);
    if (start.getFullYear() === year && start.getMonth() + 1 === month) {
      rows.push({ type: 'investment', label: inv.name, sub: 'Investment funded', amount: inv.principalAmount, date: inv.startDate, isInflow: false });
    }
    if (inv.closedAt) {
      const closed = new Date(inv.closedAt);
      if (closed.getFullYear() === year && closed.getMonth() + 1 === month) {
        rows.push({ type: 'investment', label: inv.name, sub: 'Investment returned', amount: inv.actualReturnAmount ?? inv.expectedReturnAmount, date: inv.closedAt, isInflow: true });
      }
    }
    return rows;
  });

  const baseRows: Row[] = [
    ...incomes.map(i => ({ type: 'income' as const, label: i.source, sub: i.description, amount: i.amount, date: i.date, isInflow: true })),
    ...expenses.map(e => ({ type: 'expense' as const, label: e.category, sub: e.description || e.subCategory, amount: e.amount, date: e.date, isInflow: false })),
    ...invRows,
  ];

  const rows = sortRows(baseRows, sortCol, sortDir);

  const totalIncome = incomes.reduce((s, i) => s + i.amount, 0);
  const totalExpense = expenses.reduce((s, e) => s + e.amount, 0);
  const totalEmi = emis.reduce((s, e) => s + e.emiAmount, 0);
  const totalInvActive = investments.filter(i => i.status === 'Active').reduce((s, i) => s + i.principalAmount, 0);
  const net = totalIncome - totalExpense - totalEmi;
  const fmt = (n: number) => `₹${n.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`;

  const typeBadge = (r: Row) => {
    if (r.type === 'income') return { bg: '#dcfce7', color: '#166534', label: 'income' };
    if (r.type === 'expense') return { bg: '#fee2e2', color: '#991b1b', label: 'expense' };
    return r.isInflow
      ? { bg: '#ede9fe', color: '#5b21b6', label: 'invest ↩' }
      : { bg: '#f0fdf4', color: '#166534', label: 'invest ↗' };
  };

  return (
    <div>
      <h1 style={{ margin: '0 0 24px', fontSize: 24, fontWeight: 700 }}>Statement</h1>

      <div style={{ display: 'flex', gap: 12, marginBottom: 20, alignItems: 'center' }}>
        <select value={year} onChange={e => setYear(+e.target.value)} style={selectStyle}>
          {[2023, 2024, 2025, 2026].map(y => <option key={y} value={y}>{y}</option>)}
        </select>
        <select value={month} onChange={e => setMonth(+e.target.value)} style={selectStyle}>
          {Array.from({ length: 12 }, (_, i) => i + 1).map(m => (
            <option key={m} value={m}>{new Date(2000, m - 1).toLocaleString('default', { month: 'long' })}</option>
          ))}
        </select>
      </div>

      {loading ? <p style={{ color: '#94a3b8' }}>Loading…</p> : (
        <>
          <div className="stat-cards" style={{ marginBottom: 28 }}>
            <Card label="Income" value={fmt(totalIncome)} color="#10b981" />
            <Card label="Expenses" value={fmt(totalExpense)} color="#ef4444" />
            <Card label="EMIs (active)" value={fmt(totalEmi)} color="#f59e0b" />
            <Card label="Investments (active)" value={fmt(totalInvActive)} color="#8b5cf6" />
            <Card label="Net" value={fmt(net)} color={net >= 0 ? '#3b82f6' : '#ef4444'} />
          </div>

          <div className="table-wrap" style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)' }}>
            <table style={{ width: '100%', borderCollapse: 'collapse', minWidth: 480 }}>
              <thead>
                <tr style={{ background: '#f8fafc' }}>
                  {COLUMNS.map(({ key, label }) => (
                    <th
                      key={key}
                      onClick={() => handleSort(key)}
                      style={{
                        padding: '12px 16px',
                        textAlign: key === 'amount' ? 'right' : 'left',
                        fontSize: 12,
                        fontWeight: 600,
                        color: sortCol === key ? '#334155' : '#64748b',
                        borderBottom: '1px solid #f1f5f9',
                        cursor: 'pointer',
                        userSelect: 'none',
                        whiteSpace: 'nowrap',
                      }}
                    >
                      {label}
                      <SortIcon col={key} sortCol={sortCol} sortDir={sortDir} />
                    </th>
                  ))}
                </tr>
              </thead>
              <tbody>
                {rows.length === 0
                  ? <tr><td colSpan={5} style={{ padding: 32, textAlign: 'center', color: '#94a3b8' }}>No transactions</td></tr>
                  : rows.map((r, i) => {
                    const badge = typeBadge(r);
                    const amtColor = r.isInflow ? '#10b981' : (r.type === 'investment' ? '#8b5cf6' : '#ef4444');
                    return (
                      <tr key={i} style={{ borderBottom: '1px solid #f8fafc' }}>
                        <td style={{ padding: '10px 16px', fontSize: 13 }}>{new Date(r.date).toLocaleDateString()}</td>
                        <td style={{ padding: '10px 16px' }}>
                          <span style={{ padding: '2px 8px', borderRadius: 10, fontSize: 11, fontWeight: 600, background: badge.bg, color: badge.color }}>
                            {badge.label}
                          </span>
                        </td>
                        <td style={{ padding: '10px 16px', fontSize: 13, fontWeight: 500 }}>{r.label}</td>
                        <td style={{ padding: '10px 16px', fontSize: 13, color: '#64748b' }}>{r.sub || '—'}</td>
                        <td style={{ padding: '10px 16px', fontSize: 14, fontWeight: 700, color: amtColor, textAlign: 'right' }}>
                          {r.isInflow ? '+' : '-'}{fmt(r.amount)}
                        </td>
                      </tr>
                    );
                  })}
              </tbody>
            </table>
          </div>
        </>
      )}
    </div>
  );
}

function Card({ label, value, color }: { label: string; value: string; color: string }) {
  return (
    <div style={{ background: '#fff', borderRadius: 12, padding: '16px 20px', boxShadow: '0 1px 6px rgba(0,0,0,0.05)', borderLeft: `4px solid ${color}` }}>
      <div style={{ fontSize: 12, color: '#94a3b8', marginBottom: 4 }}>{label}</div>
      <div style={{ fontSize: 20, fontWeight: 700, color }}>{value}</div>
    </div>
  );
}

const selectStyle: React.CSSProperties = { padding: '8px 12px', borderRadius: 8, border: '1px solid #e2e8f0', fontSize: 14 };
