'use client';

import { useEffect, useState } from 'react';
import { api } from '@/lib/api';

interface Expense  { id: string; amount: number; category: string; description: string; date: string; }
interface Income   { id: string; amount: number; source: string; description: string; date: string; }
interface Emi      { id: string; loanName: string; bankName: string; emiAmount: number; nextDueDate: string; remainingEmis: number; }
interface Investment { id: string; name: string; principalAmount: number; expectedReturnAmount: number; status: string; startDate: string; }

const now = new Date();
const fmt  = (n: number) => `₹${Math.abs(n).toLocaleString('en-IN', { minimumFractionDigits: 0, maximumFractionDigits: 0 })}`;
const fmtD = (d: string) => new Date(d).toLocaleDateString('en-IN', { day: 'numeric', month: 'short' });

const CAT_COLORS = ['#ef4444','#f59e0b','#3b82f6','#8b5cf6','#10b981','#ec4899','#06b6d4','#84cc16'];

function CategoryChart({ expenses }: { expenses: Expense[] }) {
  const map = new Map<string, number>();
  for (const e of expenses) {
    const cat = e.category.split(' / ')[0];
    map.set(cat, (map.get(cat) ?? 0) + e.amount);
  }
  const cats = [...map.entries()].sort((a, b) => b[1] - a[1]).slice(0, 8);
  const max = cats[0]?.[1] ?? 1;

  if (cats.length === 0) return <p style={{ color: '#94a3b8', fontSize: 14 }}>No expenses this month</p>;

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
      {cats.map(([cat, amt], i) => (
        <div key={cat}>
          <div style={{ display: 'flex', justifyContent: 'space-between', fontSize: 13, marginBottom: 4 }}>
            <span style={{ color: '#374151', fontWeight: 500 }}>{cat}</span>
            <span style={{ color: '#64748b' }}>{fmt(amt)}</span>
          </div>
          <div style={{ background: '#f1f5f9', borderRadius: 6, height: 8, overflow: 'hidden' }}>
            <div style={{ background: CAT_COLORS[i % CAT_COLORS.length], height: 8, borderRadius: 6, width: `${(amt / max) * 100}%`, transition: 'width .4s' }} />
          </div>
        </div>
      ))}
    </div>
  );
}

function IncomeVsExpenseBar({ income, expense }: { income: number; expense: number }) {
  const total = income + expense || 1;
  return (
    <div>
      <div style={{ display: 'flex', justifyContent: 'space-between', fontSize: 13, marginBottom: 6 }}>
        <span style={{ color: '#10b981', fontWeight: 600 }}>+{fmt(income)} income</span>
        <span style={{ color: '#ef4444', fontWeight: 600 }}>-{fmt(expense)} expenses</span>
      </div>
      <div style={{ display: 'flex', height: 12, borderRadius: 6, overflow: 'hidden' }}>
        <div style={{ background: '#10b981', flex: income / total }} />
        <div style={{ background: '#ef4444', flex: expense / total }} />
      </div>
      <div style={{ marginTop: 8, fontSize: 13, color: income >= expense ? '#10b981' : '#ef4444', fontWeight: 600 }}>
        {income >= expense ? 'Saved ' : 'Overspent by '}{fmt(Math.abs(income - expense))} this month
      </div>
    </div>
  );
}

export default function DashboardPage() {
  const [expenses, setExpenses]     = useState<Expense[]>([]);
  const [incomes, setIncomes]       = useState<Income[]>([]);
  const [emis, setEmis]             = useState<Emi[]>([]);
  const [investments, setInvestments] = useState<Investment[]>([]);
  const [loading, setLoading]       = useState(true);

  useEffect(() => {
    Promise.all([
      api.get<Expense[]>(`/api/expenses?year=${now.getFullYear()}&month=${now.getMonth() + 1}`),
      api.get<Income[]>(`/api/incomes?year=${now.getFullYear()}&month=${now.getMonth() + 1}`),
      api.get<Emi[]>('/api/emis?status=Active'),
      api.get<Investment[]>('/api/investments'),
    ])
      .then(([e, i, em, inv]) => {
        setExpenses(e ?? []);
        setIncomes(i ?? []);
        setEmis(em ?? []);
        setInvestments(inv ?? []);
      })
      .catch(() => {})
      .finally(() => setLoading(false));
  }, []);

  const totalIncome  = incomes.reduce((s, i) => s + i.amount, 0);
  const totalExpense = expenses.reduce((s, e) => s + e.amount, 0);
  const totalEmi     = emis.reduce((s, e) => s + e.emiAmount, 0);
  const activeInv    = investments.filter(i => i.status === 'Active');
  const totalInvested = activeInv.reduce((s, i) => s + i.principalAmount, 0);
  const balance      = totalIncome - totalExpense - totalEmi;

  const recent = [
    ...expenses.map(e => ({ type: 'exp' as const, label: e.category, sub: e.description, amount: -e.amount, date: e.date })),
    ...incomes.map(i  => ({ type: 'inc' as const, label: i.source,   sub: i.description, amount:  i.amount, date: i.date })),
  ].sort((a, b) => new Date(b.date).getTime() - new Date(a.date).getTime()).slice(0, 8);

  const upcomingEmis = [...emis]
    .sort((a, b) => new Date(a.nextDueDate).getTime() - new Date(b.nextDueDate).getTime())
    .slice(0, 4);

  if (loading) return <div><h1 style={{ margin: '0 0 24px', fontSize: 24, fontWeight: 700 }}>Dashboard</h1><p style={{ color: '#94a3b8' }}>Loading…</p></div>;

  return (
    <div>
      <div style={{ marginBottom: 24 }}>
        <h1 style={{ margin: 0, fontSize: 24, fontWeight: 700 }}>Dashboard</h1>
        <p style={{ margin: '4px 0 0', color: '#64748b', fontSize: 14 }}>
          {now.toLocaleString('en-IN', { month: 'long', year: 'numeric' })}
        </p>
      </div>

      {/* Summary cards */}
      <div className="stat-cards" style={{ marginBottom: 24 }}>
        <SummaryCard label="Income"     value={fmt(totalIncome)}  color="#10b981" sub="this month" />
        <SummaryCard label="Expenses"   value={fmt(totalExpense)} color="#ef4444" sub="this month" />
        <SummaryCard label="EMIs"       value={fmt(totalEmi)}     color="#f59e0b" sub={`${emis.length} active`} />
        <SummaryCard label="Invested"   value={fmt(totalInvested)}color="#8b5cf6" sub={`${activeInv.length} active`} />
        <SummaryCard
          label="Net Balance"
          value={fmt(balance)}
          color={balance >= 0 ? '#3b82f6' : '#ef4444'}
          sub={balance >= 0 ? 'surplus' : 'deficit'}
        />
      </div>

      {/* Income vs expense bar */}
      <div style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: '20px 24px', marginBottom: 24 }}>
        <h2 style={{ margin: '0 0 16px', fontSize: 15, fontWeight: 600 }}>Income vs Expenses</h2>
        <IncomeVsExpenseBar income={totalIncome} expense={totalExpense} />
      </div>

      <div className="two-col" style={{ marginBottom: 24 }}>
        {/* Spend by category */}
        <div style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: '20px 24px' }}>
          <h2 style={{ margin: '0 0 16px', fontSize: 15, fontWeight: 600 }}>Spend by Category</h2>
          <CategoryChart expenses={expenses} />
        </div>

        {/* Recent transactions */}
        <div style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: '20px 24px' }}>
          <h2 style={{ margin: '0 0 16px', fontSize: 15, fontWeight: 600 }}>Recent Transactions</h2>
          {recent.length === 0
            ? <p style={{ color: '#94a3b8', fontSize: 14 }}>No transactions this month</p>
            : recent.map((r, i) => (
              <div key={i} style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', padding: '8px 0', borderBottom: i < recent.length - 1 ? '1px solid #f8fafc' : 'none' }}>
                <div style={{ flex: 1, minWidth: 0 }}>
                  <div style={{ fontWeight: 500, fontSize: 13, whiteSpace: 'nowrap', overflow: 'hidden', textOverflow: 'ellipsis' }}>{r.label}</div>
                  <div style={{ fontSize: 11, color: '#94a3b8' }}>{fmtD(r.date)}{r.sub ? ` · ${r.sub}` : ''}</div>
                </div>
                <div style={{ fontWeight: 600, fontSize: 14, color: r.amount >= 0 ? '#10b981' : '#ef4444', marginLeft: 12 }}>
                  {r.amount >= 0 ? '+' : '-'}{fmt(r.amount)}
                </div>
              </div>
            ))
          }
        </div>
      </div>

      {/* Upcoming EMIs */}
      {upcomingEmis.length > 0 && (
        <div style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: '20px 24px', marginBottom: 24 }}>
          <h2 style={{ margin: '0 0 16px', fontSize: 15, fontWeight: 600 }}>Upcoming EMIs</h2>
          <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
            {upcomingEmis.map(emi => {
              const due = new Date(emi.nextDueDate);
              const daysLeft = Math.ceil((due.getTime() - Date.now()) / 86400000);
              const urgent = daysLeft <= 5;
              return (
                <div key={emi.id} style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', padding: '10px 14px', borderRadius: 10, background: urgent ? '#fef2f2' : '#f8fafc', border: `1px solid ${urgent ? '#fecaca' : '#f1f5f9'}` }}>
                  <div>
                    <div style={{ fontWeight: 600, fontSize: 13 }}>{emi.loanName}</div>
                    <div style={{ fontSize: 11, color: '#64748b' }}>{emi.bankName} · {emi.remainingEmis} EMIs left</div>
                  </div>
                  <div style={{ textAlign: 'right' }}>
                    <div style={{ fontWeight: 700, color: '#f59e0b', fontSize: 14 }}>{fmt(emi.emiAmount)}</div>
                    <div style={{ fontSize: 11, color: urgent ? '#ef4444' : '#94a3b8', fontWeight: urgent ? 600 : 400 }}>
                      {daysLeft <= 0 ? 'Overdue!' : daysLeft === 1 ? 'Due tomorrow' : `Due in ${daysLeft}d`}
                    </div>
                  </div>
                </div>
              );
            })}
          </div>
        </div>
      )}

      {/* Active investments */}
      {activeInv.length > 0 && (
        <div style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: '20px 24px' }}>
          <h2 style={{ margin: '0 0 16px', fontSize: 15, fontWeight: 600 }}>Active Investments</h2>
          <div style={{ display: 'flex', flexDirection: 'column', gap: 8 }}>
            {activeInv.slice(0, 4).map(inv => (
              <div key={inv.id} style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', padding: '8px 0', borderBottom: '1px solid #f8fafc' }}>
                <div>
                  <div style={{ fontWeight: 500, fontSize: 13 }}>{inv.name}</div>
                  <div style={{ fontSize: 11, color: '#94a3b8' }}>Since {fmtD(inv.startDate)}</div>
                </div>
                <div style={{ textAlign: 'right' }}>
                  <div style={{ fontWeight: 700, color: '#8b5cf6', fontSize: 14 }}>{fmt(inv.principalAmount)}</div>
                  <div style={{ fontSize: 11, color: '#10b981' }}>→ {fmt(inv.expectedReturnAmount)}</div>
                </div>
              </div>
            ))}
          </div>
        </div>
      )}
    </div>
  );
}

function SummaryCard({ label, value, color, sub }: { label: string; value: string; color: string; sub: string }) {
  return (
    <div className="stat-card" style={{ borderLeft: `4px solid ${color}`, background: '#fff', borderRadius: 12, padding: '16px 20px', boxShadow: '0 1px 6px rgba(0,0,0,0.05)' }}>
      <div style={{ fontSize: 12, color: '#94a3b8', marginBottom: 4, fontWeight: 500 }}>{label}</div>
      <div style={{ fontSize: 20, fontWeight: 700, color }}>{value}</div>
      <div style={{ fontSize: 11, color: '#94a3b8', marginTop: 2 }}>{sub}</div>
    </div>
  );
}
