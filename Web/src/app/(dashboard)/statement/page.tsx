'use client';

import { useEffect, useState } from 'react';
import { api } from '@/lib/api';

interface Expense { id: string; amount: number; category: string; subCategory: string; description: string; date: string; isVirtual: boolean; }
interface Income { id: string; amount: number; source: string; description: string; date: string; }
interface Emi { id: string; loanName: string; bankName: string; emiAmount: number; nextDueDate: string; status: string; }
interface Investment { id: string; name: string; principalAmount: number; expectedReturnAmount: number; actualReturnAmount?: number; startDate: string; closedAt?: string; status: string; }

type RowType = 'income' | 'expense' | 'expense-virtual' | 'investment';
type Row = { type: RowType; label: string; sub: string; amount: number; date: string; isInflow: boolean; };
type SortCol = 'type' | 'label' | 'description' | 'amount';
type SortDir = 'asc' | 'desc';
type ViewMode = 'accrual' | 'cashflow';

type DateGroup = { dateKey: string; displayDate: string; rows: Row[]; dayIncome: number; dayExpense: number; };

const now = new Date();

const COLUMNS: { key: SortCol; label: string }[] = [
  { key: 'type',        label: 'Type' },
  { key: 'label',       label: 'Label' },
  { key: 'description', label: 'Description' },
  { key: 'amount',      label: 'Amount' },
];

function sortRows(rows: Row[], col: SortCol, dir: SortDir): Row[] {
  return [...rows].sort((a, b) => {
    let cmp = 0;
    switch (col) {
      case 'type':        cmp = a.type.localeCompare(b.type); break;
      case 'label':       cmp = a.label.localeCompare(b.label); break;
      case 'description': cmp = (a.sub || '').localeCompare(b.sub || ''); break;
      case 'amount':      cmp = a.amount - b.amount; break;
    }
    return dir === 'asc' ? cmp : -cmp;
  });
}

function groupByDate(rows: Row[]): DateGroup[] {
  // Sort descending by date first
  const sorted = [...rows].sort((a, b) => new Date(b.date).getTime() - new Date(a.date).getTime());
  const map = new Map<string, Row[]>();
  for (const r of sorted) {
    const key = r.date.slice(0, 10);
    if (!map.has(key)) map.set(key, []);
    map.get(key)!.push(r);
  }
  return [...map.entries()].map(([key, rows]) => ({
    dateKey: key,
    displayDate: new Date(key + 'T00:00:00').toLocaleDateString('en-IN', { day: 'numeric', month: 'short', year: 'numeric' }),
    rows,
    dayIncome:  rows.filter(r => r.isInflow).reduce((s, r) => s + r.amount, 0),
    dayExpense: rows.filter(r => !r.isInflow).reduce((s, r) => s + r.amount, 0),
  }));
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
  const [expenses, setExpenses]     = useState<Expense[]>([]);
  const [incomes, setIncomes]       = useState<Income[]>([]);
  const [emis, setEmis]             = useState<Emi[]>([]);
  const [investments, setInvestments] = useState<Investment[]>([]);
  const [loading, setLoading]       = useState(true);
  const [year, setYear]             = useState(now.getFullYear());
  const [month, setMonth]           = useState(now.getMonth() + 1);
  const [sortCol, setSortCol]       = useState<SortCol>('amount');
  const [sortDir, setSortDir]       = useState<SortDir>('desc');
  const [viewMode, setViewMode]     = useState<ViewMode>('accrual');

  async function load(mode: ViewMode = viewMode) {
    setLoading(true);
    try {
      // Cash flow: only real money movement (IsVirtual=false)
      // Accrual:   all expenses (including CC virtual charges)
      const expenseQs = mode === 'cashflow'
        ? `?year=${year}&month=${month}&isVirtual=false`
        : `?year=${year}&month=${month}`;

      const [e, i, em, inv] = await Promise.all([
        api.get<Expense[]>(`/api/expenses${expenseQs}`),
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

  useEffect(() => { load(viewMode); }, [year, month, viewMode]);

  function handleSort(col: SortCol) {
    if (sortCol === col) setSortDir(d => d === 'asc' ? 'desc' : 'asc');
    else { setSortCol(col); setSortDir('asc'); }
  }

  const invRows: Row[] = investments.flatMap(inv => {
    const rows: Row[] = [];
    const start = new Date(inv.startDate);
    if (start.getFullYear() === year && start.getMonth() + 1 === month)
      rows.push({ type: 'investment', label: inv.name, sub: 'Investment funded', amount: inv.principalAmount, date: inv.startDate, isInflow: false });
    if (inv.closedAt) {
      const closed = new Date(inv.closedAt);
      if (closed.getFullYear() === year && closed.getMonth() + 1 === month)
        rows.push({ type: 'investment', label: inv.name, sub: 'Investment returned', amount: inv.actualReturnAmount ?? inv.expectedReturnAmount, date: inv.closedAt, isInflow: true });
    }
    return rows;
  });

  const allRows: Row[] = [
    ...incomes.map(i => ({ type: 'income' as const, label: i.source, sub: i.description, amount: i.amount, date: i.date, isInflow: true })),
    ...expenses.map(e => ({ type: (e.isVirtual ? 'expense-virtual' : 'expense') as RowType, label: e.category, sub: e.description || e.subCategory, amount: e.amount, date: e.date, isInflow: false })),
    ...invRows,
  ];

  const groups = groupByDate(allRows).map(g => ({ ...g, rows: sortRows(g.rows, sortCol, sortDir) }));

  const totalIncome    = incomes.reduce((s, i) => s + i.amount, 0);
  const totalExpense   = expenses.reduce((s, e) => s + e.amount, 0);
  const totalEmi       = emis.reduce((s, e) => s + e.emiAmount, 0);
  const totalInvActive = investments.filter(i => i.status === 'Active').reduce((s, i) => s + i.principalAmount, 0);
  const net            = totalIncome - totalExpense - totalEmi;
  const fmt = (n: number) => `₹${n.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`;

  const typeBadge = (r: Row) => {
    if (r.type === 'income')          return { bg: '#dcfce7', color: '#166534', label: 'income' };
    if (r.type === 'expense-virtual') return { bg: '#fef3c7', color: '#92400e', label: 'CC (virtual)' };
    if (r.type === 'expense')         return { bg: '#fee2e2', color: '#991b1b', label: 'expense' };
    return r.isInflow
      ? { bg: '#ede9fe', color: '#5b21b6', label: 'invest ↩' }
      : { bg: '#f0fdf4', color: '#166534', label: 'invest ↗' };
  };

  const amtColor = (r: Row) => {
    if (r.isInflow) return '#10b981';
    if (r.type === 'expense-virtual') return '#d97706';
    if (r.type === 'investment') return '#8b5cf6';
    return '#ef4444';
  };

  return (
    <div>
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 24, flexWrap: 'wrap', gap: 12 }}>
        <h1 style={{ margin: 0, fontSize: 24, fontWeight: 700 }}>Statement</h1>
        <div style={{ display: 'flex', background: '#f1f5f9', borderRadius: 8, padding: 3, gap: 2 }}>
          {(['accrual', 'cashflow'] as ViewMode[]).map(m => (
            <button key={m} onClick={() => setViewMode(m)} style={{
              padding: '6px 14px', borderRadius: 6, border: 'none', cursor: 'pointer', fontSize: 12, fontWeight: 600,
              background: viewMode === m ? '#fff' : 'transparent',
              color: viewMode === m ? '#1e293b' : '#94a3b8',
              boxShadow: viewMode === m ? '0 1px 3px rgba(0,0,0,0.1)' : 'none',
            }}>
              {m === 'accrual' ? 'Accrual' : 'Cash Flow'}
            </button>
          ))}
        </div>
      </div>

      <div style={{ display: 'flex', gap: 12, marginBottom: 20, alignItems: 'center' }}>
        <select value={year} onChange={e => setYear(+e.target.value)} style={selectStyle}>
          {[2023, 2024, 2025, 2026].map(y => <option key={y} value={y}>{y}</option>)}
        </select>
        <select value={month} onChange={e => setMonth(+e.target.value)} style={selectStyle}>
          {Array.from({ length: 12 }, (_, i) => i + 1).map(m => (
            <option key={m} value={m}>{new Date(2000, m - 1).toLocaleString('default', { month: 'long' })}</option>
          ))}
        </select>
        {viewMode === 'accrual' && (
          <span style={{ fontSize: 11, color: '#94a3b8', marginLeft: 4 }}>CC charges shown when swiped</span>
        )}
        {viewMode === 'cashflow' && (
          <span style={{ fontSize: 11, color: '#94a3b8', marginLeft: 4 }}>Only actual cash movements</span>
        )}
      </div>

      {loading ? <p style={{ color: '#94a3b8' }}>Loading…</p> : (
        <>
          <div className="stat-cards" style={{ marginBottom: 28 }}>
            <Card label="Income"               value={fmt(totalIncome)}    color="#10b981" />
            <Card label="Expenses"             value={fmt(totalExpense)}   color="#ef4444" />
            <Card label="EMIs (active)"        value={fmt(totalEmi)}       color="#f59e0b" />
            <Card label="Investments (active)" value={fmt(totalInvActive)} color="#8b5cf6" />
            <Card label="Net"                  value={fmt(net)}            color={net >= 0 ? '#3b82f6' : '#ef4444'} />
          </div>

          <div className="table-wrap" style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', overflow: 'hidden' }}>
            <table style={{ width: '100%', borderCollapse: 'collapse', minWidth: 440 }}>
              <thead>
                <tr style={{ background: '#f8fafc' }}>
                  {COLUMNS.map(({ key, label }) => (
                    <th key={key} onClick={() => handleSort(key)} style={{
                      padding: '11px 16px',
                      textAlign: key === 'amount' ? 'right' : 'left',
                      fontSize: 12, fontWeight: 600,
                      color: sortCol === key ? '#334155' : '#64748b',
                      borderBottom: '1px solid #f1f5f9',
                      cursor: 'pointer', userSelect: 'none', whiteSpace: 'nowrap',
                    }}>
                      {label}<SortIcon col={key} sortCol={sortCol} sortDir={sortDir} />
                    </th>
                  ))}
                </tr>
              </thead>
              <tbody>
                {groups.length === 0
                  ? <tr><td colSpan={4} style={{ padding: 32, textAlign: 'center', color: '#94a3b8' }}>No transactions</td></tr>
                  : groups.map(g => (
                    <>
                      {/* Date group header */}
                      <tr key={`hdr-${g.dateKey}`} style={{ background: '#f8fafc', borderTop: '2px solid #e2e8f0' }}>
                        <td colSpan={4} style={{ padding: '8px 16px' }}>
                          <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
                            <span style={{ fontSize: 12, fontWeight: 700, color: '#334155' }}>{g.displayDate}</span>
                            <div style={{ display: 'flex', gap: 16 }}>
                              {g.dayIncome > 0 && (
                                <span style={{ fontSize: 12, color: '#10b981', fontWeight: 600 }}>+{fmt(g.dayIncome)}</span>
                              )}
                              {g.dayExpense > 0 && (
                                <span style={{ fontSize: 12, color: '#ef4444', fontWeight: 600 }}>-{fmt(g.dayExpense)}</span>
                              )}
                            </div>
                          </div>
                        </td>
                      </tr>

                      {/* Rows in this date group */}
                      {g.rows.map((r, i) => {
                        const badge = typeBadge(r);
                        return (
                          <tr key={`${g.dateKey}-${i}`} style={{ borderBottom: '1px solid #f8fafc' }}>
                            <td style={{ padding: '9px 16px' }}>
                              <span style={{ padding: '2px 8px', borderRadius: 10, fontSize: 11, fontWeight: 600, background: badge.bg, color: badge.color, whiteSpace: 'nowrap' }}>
                                {badge.label}
                              </span>
                            </td>
                            <td style={{ padding: '9px 16px', fontSize: 13, fontWeight: 500 }}>{r.label}</td>
                            <td style={{ padding: '9px 16px', fontSize: 13, color: '#64748b' }}>{r.sub || '—'}</td>
                            <td style={{ padding: '9px 16px', fontSize: 14, fontWeight: 700, color: amtColor(r), textAlign: 'right', whiteSpace: 'nowrap' }}>
                              {r.isInflow ? '+' : '-'}{fmt(r.amount)}
                            </td>
                          </tr>
                        );
                      })}
                    </>
                  ))}
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
