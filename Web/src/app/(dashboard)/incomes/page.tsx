'use client';

import { useEffect, useState, FormEvent } from 'react';
import { api } from '@/lib/api';

interface Income { id: string; amount: number; source: string; description: string; date: string; }

const now = new Date();

export default function IncomesPage() {
  const [items, setItems] = useState<Income[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editing, setEditing] = useState<Income | null>(null);
  const [year, setYear] = useState(now.getFullYear());
  const [month, setMonth] = useState(now.getMonth() + 1);

  async function load() {
    setLoading(true);
    try {
      const data = await api.get<Income[]>(`/api/incomes?year=${year}&month=${month}`);
      setItems(data ?? []);
    } catch { setItems([]); } finally { setLoading(false); }
  }

  useEffect(() => { load(); }, [year, month]);

  async function handleDelete(id: string) {
    if (!confirm('Delete this income?')) return;
    await api.delete(`/api/incomes/${id}`);
    load();
  }

  const total = items.reduce((s, i) => s + i.amount, 0);
  const fmt = (n: number) => `₹${n.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`;

  return (
    <div>
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 24 }}>
        <h1 style={{ margin: 0, fontSize: 24, fontWeight: 700 }}>Incomes</h1>
        <button onClick={() => { setEditing(null); setShowForm(true); }} style={addBtnStyle}>+ Add Income</button>
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
        <div style={{ marginLeft: 'auto', fontWeight: 600, color: '#10b981', fontSize: 18 }}>Total: {fmt(total)}</div>
      </div>

      {loading ? <p style={{ color: '#94a3b8' }}>Loading…</p> : (
        <div style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', overflow: 'hidden' }}>
          {items.length === 0
            ? <p style={{ padding: 24, color: '#94a3b8', textAlign: 'center' }}>No incomes for this period</p>
            : items.map((e, i) => (
              <div key={e.id} style={{ display: 'flex', alignItems: 'center', padding: '14px 20px', borderBottom: i < items.length - 1 ? '1px solid #f1f5f9' : 'none' }}>
                <div style={{ flex: 1 }}>
                  <div style={{ fontWeight: 600, fontSize: 14 }}>{e.source}</div>
                  <div style={{ fontSize: 12, color: '#94a3b8' }}>{e.description || '—'} · {new Date(e.date).toLocaleDateString()}</div>
                </div>
                <div style={{ fontWeight: 700, color: '#10b981', fontSize: 16, marginRight: 16 }}>{fmt(e.amount)}</div>
                <button onClick={() => { setEditing(e); setShowForm(true); }} style={iconBtn('#3b82f6')}>✏️</button>
                <button onClick={() => handleDelete(e.id)} style={iconBtn('#ef4444')}>🗑️</button>
              </div>
            ))
          }
        </div>
      )}

      {showForm && (
        <IncomeForm initial={editing} onClose={() => setShowForm(false)} onSaved={() => { setShowForm(false); load(); }} />
      )}
    </div>
  );
}

function IncomeForm({ initial, onClose, onSaved }: { initial: Income | null; onClose: () => void; onSaved: () => void }) {
  const [amount, setAmount] = useState(initial?.amount.toString() ?? '');
  const [source, setSource] = useState(initial?.source ?? '');
  const [description, setDescription] = useState(initial?.description ?? '');
  const [date, setDate] = useState(initial ? initial.date.slice(0, 10) : new Date().toISOString().slice(0, 10));
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setLoading(true);
    try {
      const payload = { amount: parseFloat(amount), source, description, date: new Date(date).toISOString() };
      if (initial) await api.put(`/api/incomes/${initial.id}`, payload);
      else await api.post('/api/incomes', payload);
      onSaved();
    } catch (err: unknown) {
      alert(err instanceof Error ? err.message : 'Failed');
    } finally { setLoading(false); }
  }

  return (
    <Modal title={initial ? 'Edit Income' : 'Add Income'} onClose={onClose}>
      <form onSubmit={handleSubmit}>
        <Field label="Amount"><input style={fieldInput} type="number" step="0.01" value={amount} onChange={e => setAmount(e.target.value)} required /></Field>
        <Field label="Source"><input style={fieldInput} value={source} onChange={e => setSource(e.target.value)} placeholder="Salary, Freelance…" required /></Field>
        <Field label="Description"><input style={fieldInput} value={description} onChange={e => setDescription(e.target.value)} placeholder="Optional" /></Field>
        <Field label="Date"><input style={fieldInput} type="date" value={date} onChange={e => setDate(e.target.value)} required /></Field>
        <div style={{ display: 'flex', gap: 8, marginTop: 20 }}>
          <button type="button" onClick={onClose} style={{ ...submitBtn, background: '#f1f5f9', color: '#374151' }}>Cancel</button>
          <button type="submit" disabled={loading} style={submitBtn}>{loading ? 'Saving…' : 'Save'}</button>
        </div>
      </form>
    </Modal>
  );
}

function Modal({ title, onClose, children }: { title: string; onClose: () => void; children: React.ReactNode }) {
  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', zIndex: 1000, display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
      <div style={{ background: '#fff', borderRadius: 16, padding: '28px 28px', width: 420, boxShadow: '0 8px 40px rgba(0,0,0,0.15)' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 20 }}>
          <h2 style={{ margin: 0, fontSize: 18, fontWeight: 700 }}>{title}</h2>
          <button onClick={onClose} style={{ border: 'none', background: 'none', cursor: 'pointer', fontSize: 20, color: '#94a3b8' }}>×</button>
        </div>
        {children}
      </div>
    </div>
  );
}

function Field({ label, children }: { label: string; children: React.ReactNode }) {
  return (
    <div style={{ marginBottom: 14 }}>
      <label style={{ display: 'block', fontSize: 13, fontWeight: 500, marginBottom: 4, color: '#374151' }}>{label}</label>
      {children}
    </div>
  );
}

const fieldInput: React.CSSProperties = { width: '100%', padding: '9px 12px', borderRadius: 8, border: '1px solid #e2e8f0', fontSize: 14, boxSizing: 'border-box', outline: 'none' };
const submitBtn: React.CSSProperties = { flex: 1, padding: '10px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const addBtnStyle: React.CSSProperties = { padding: '9px 18px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const selectStyle: React.CSSProperties = { padding: '8px 12px', borderRadius: 8, border: '1px solid #e2e8f0', fontSize: 14 };
const iconBtn = (color: string): React.CSSProperties => ({ border: 'none', background: 'none', cursor: 'pointer', fontSize: 16, color, marginLeft: 6 });
