'use client';

import { useEffect, useState } from 'react';
import { api } from '@/lib/api';

interface Expense { id: string; amount: number; category: string; subCategory: string; description: string; date: string; }
interface Income { id: string; amount: number; source: string; description: string; date: string; }
interface Emi { id: string; loanName: string; bankName: string; emiAmount: number; nextDueDate: string; status: string; }

type Row = { type: 'income' | 'expense'; label: string; sub: string; amount: number; date: string; };

const now = new Date();

export default function StatementPage() {
  const [expenses, setExpenses] = useState<Expense[]>([]);
  const [incomes, setIncomes] = useState<Income[]>([]);
  const [emis, setEmis] = useState<Emi[]>([]);
  const [loading, setLoading] = useState(true);
  const [year, setYear] = useState(now.getFullYear());
  const [month, setMonth] = useState(now.getMonth() + 1);

  async function load() {
    setLoading(true);
    try {
      const [e, i, em] = await Promise.all([
        api.get<Expense[]>(`/api/expenses?year=${year}&month=${month}`),
        api.get<Income[]>(`/api/incomes?year=${year}&month=${month}`),
        api.get<Emi[]>('/api/emis?status=Active'),
      ]);
      setExpenses(e ?? []);
      setIncomes(i ?? []);
      setEmis(em ?? []);
    } catch { } finally { setLoading(false); }
  }

  useEffect(() => { load(); }, [year, month]);

  const rows: Row[] = [
    ...incomes.map(i => ({ type: 'income' as const, label: i.source, sub: i.description, amount: i.amount, date: i.date })),
    ...expenses.map(e => ({ type: 'expense' as const, label: e.category, sub: e.description || e.subCategory, amount: e.amount, date: e.date })),
  ].sort((a, b) => new Date(b.date).getTime() - new Date(a.date).getTime());

  const totalIncome = incomes.reduce((s, i) => s + i.amount, 0);
  const totalExpense = expenses.reduce((s, e) => s + e.amount, 0);
  const totalEmi = emis.reduce((s, e) => s + e.emiAmount, 0);
  const net = totalIncome - totalExpense - totalEmi;
  const fmt = (n: number) => `₹${n.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`;

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
          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4,1fr)', gap: 16, marginBottom: 28 }}>
            <Card label="Income" value={fmt(totalIncome)} color="#10b981" />
            <Card label="Expenses" value={fmt(totalExpense)} color="#ef4444" />
            <Card label="EMIs (active)" value={fmt(totalEmi)} color="#f59e0b" />
            <Card label="Net" value={fmt(net)} color={net >= 0 ? '#3b82f6' : '#ef4444'} />
          </div>

          <div style={{ background: '#fff', borderRadius: 12, overflow: 'hidden', boxShadow: '0 1px 6px rgba(0,0,0,0.05)' }}>
            <table style={{ width: '100%', borderCollapse: 'collapse' }}>
              <thead>
                <tr style={{ background: '#f8fafc' }}>
                  {['Date', 'Type', 'Label', 'Description', 'Amount'].map(h => (
                    <th key={h} style={{ padding: '12px 16px', textAlign: 'left', fontSize: 12, fontWeight: 600, color: '#64748b', borderBottom: '1px solid #f1f5f9' }}>{h}</th>
                  ))}
                </tr>
              </thead>
              <tbody>
                {rows.length === 0
                  ? <tr><td colSpan={5} style={{ padding: 32, textAlign: 'center', color: '#94a3b8' }}>No transactions</td></tr>
                  : rows.map((r, i) => (
                    <tr key={i} style={{ borderBottom: '1px solid #f8fafc' }}>
                      <td style={{ padding: '10px 16px', fontSize: 13 }}>{new Date(r.date).toLocaleDateString()}</td>
                      <td style={{ padding: '10px 16px' }}>
                        <span style={{ padding: '2px 8px', borderRadius: 10, fontSize: 11, fontWeight: 600, background: r.type === 'income' ? '#dcfce7' : '#fee2e2', color: r.type === 'income' ? '#166534' : '#991b1b' }}>
                          {r.type}
                        </span>
                      </td>
                      <td style={{ padding: '10px 16px', fontSize: 13, fontWeight: 500 }}>{r.label}</td>
                      <td style={{ padding: '10px 16px', fontSize: 13, color: '#64748b' }}>{r.sub || '—'}</td>
                      <td style={{ padding: '10px 16px', fontSize: 14, fontWeight: 700, color: r.type === 'income' ? '#10b981' : '#ef4444', textAlign: 'right' }}>
                        {r.type === 'income' ? '+' : '-'}{fmt(r.amount)}
                      </td>
                    </tr>
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
