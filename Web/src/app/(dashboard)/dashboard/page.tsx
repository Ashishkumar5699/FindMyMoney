'use client';

import { useEffect, useState } from 'react';
import { api } from '@/lib/api';

interface Summary { totalExpenses: number; totalIncomes: number; totalEmis: number; balance: number; }
interface Expense { id: string; amount: number; category: string; description: string; date: string; }
interface Income { id: string; amount: number; source: string; description: string; date: string; }

const now = new Date();

export default function DashboardPage() {
  const [expenses, setExpenses] = useState<Expense[]>([]);
  const [incomes, setIncomes] = useState<Income[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    Promise.all([
      api.get<Expense[]>(`/api/expenses?year=${now.getFullYear()}&month=${now.getMonth() + 1}`),
      api.get<Income[]>(`/api/incomes?year=${now.getFullYear()}&month=${now.getMonth() + 1}`),
    ]).then(([e, i]) => { setExpenses(e ?? []); setIncomes(i ?? []); }).catch(() => {}).finally(() => setLoading(false));
  }, []);

  const totalIncome = incomes.reduce((s, i) => s + i.amount, 0);
  const totalExpense = expenses.reduce((s, e) => s + e.amount, 0);
  const balance = totalIncome - totalExpense;

  const cardStyle = (bg: string): React.CSSProperties => ({
    background: bg, borderRadius: 12, padding: '20px 24px', color: '#fff', flex: 1, minWidth: 160,
  });

  const fmt = (n: number) => `₹${n.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`;

  return (
    <div>
      <h1 style={{ margin: '0 0 8px', fontSize: 24, fontWeight: 700 }}>Dashboard</h1>
      <p style={{ margin: '0 0 28px', color: '#64748b', fontSize: 14 }}>
        {now.toLocaleString('default', { month: 'long', year: 'numeric' })}
      </p>

      {loading ? (
        <p style={{ color: '#94a3b8' }}>Loading…</p>
      ) : (
        <>
          <div style={{ display: 'flex', gap: 16, marginBottom: 32, flexWrap: 'wrap' }}>
            <div style={cardStyle('#3b82f6')}>
              <div style={{ fontSize: 13, opacity: 0.85, marginBottom: 4 }}>Total Income</div>
              <div style={{ fontSize: 24, fontWeight: 700 }}>{fmt(totalIncome)}</div>
            </div>
            <div style={cardStyle('#ef4444')}>
              <div style={{ fontSize: 13, opacity: 0.85, marginBottom: 4 }}>Total Expenses</div>
              <div style={{ fontSize: 24, fontWeight: 700 }}>{fmt(totalExpense)}</div>
            </div>
            <div style={cardStyle(balance >= 0 ? '#10b981' : '#f59e0b')}>
              <div style={{ fontSize: 13, opacity: 0.85, marginBottom: 4 }}>Balance</div>
              <div style={{ fontSize: 24, fontWeight: 700 }}>{fmt(balance)}</div>
            </div>
          </div>

          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 24 }}>
            <Section title="Recent Expenses" items={expenses.slice(0, 5).map(e => ({
              label: e.category, sub: e.description, amount: -e.amount, date: e.date,
            }))} />
            <Section title="Recent Incomes" items={incomes.slice(0, 5).map(i => ({
              label: i.source, sub: i.description, amount: i.amount, date: i.date,
            }))} />
          </div>
        </>
      )}
    </div>
  );
}

function Section({ title, items }: { title: string; items: { label: string; sub: string; amount: number; date: string }[] }) {
  return (
    <div style={{ background: '#fff', borderRadius: 12, padding: '20px 24px', boxShadow: '0 1px 6px rgba(0,0,0,0.05)' }}>
      <h2 style={{ margin: '0 0 16px', fontSize: 16, fontWeight: 600 }}>{title}</h2>
      {items.length === 0
        ? <p style={{ color: '#94a3b8', fontSize: 14 }}>No data this month</p>
        : items.map((item, i) => (
            <div key={i} style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', padding: '8px 0', borderBottom: i < items.length - 1 ? '1px solid #f1f5f9' : 'none' }}>
              <div>
                <div style={{ fontWeight: 500, fontSize: 14 }}>{item.label}</div>
                <div style={{ fontSize: 12, color: '#94a3b8' }}>{item.sub || new Date(item.date).toLocaleDateString()}</div>
              </div>
              <div style={{ fontWeight: 600, color: item.amount >= 0 ? '#10b981' : '#ef4444', fontSize: 15 }}>
                {item.amount >= 0 ? '+' : ''}₹{Math.abs(item.amount).toLocaleString('en-IN')}
              </div>
            </div>
          ))
      }
    </div>
  );
}
