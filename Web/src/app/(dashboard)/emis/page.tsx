'use client';

import { useEffect, useState, FormEvent } from 'react';
import { api } from '@/lib/api';

interface Emi {
  id: string; loanName: string; bankName: string; totalAmount: number;
  emiAmount: number; totalEmis: number; paidEmis: number; interestRate: number;
  startDate: string; nextDueDate: string; status: string; description?: string;
}

export default function EmisPage() {
  const [items, setItems] = useState<Emi[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editing, setEditing] = useState<Emi | null>(null);
  const [filter, setFilter] = useState('Active');

  async function load() {
    setLoading(true);
    try {
      const data = await api.get<Emi[]>(`/api/emis?status=${filter}`);
      setItems(data ?? []);
    } catch { setItems([]); } finally { setLoading(false); }
  }

  useEffect(() => { load(); }, [filter]);

  async function handleDelete(id: string) {
    if (!confirm('Delete this EMI?')) return;
    await api.delete(`/api/emis/${id}`);
    load();
  }

  const totalMonthly = items.filter(e => e.status === 'Active').reduce((s, e) => s + e.emiAmount, 0);
  const fmt = (n: number) => `₹${n.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`;

  return (
    <div>
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 24 }}>
        <h1 style={{ margin: 0, fontSize: 24, fontWeight: 700 }}>EMIs</h1>
        <button onClick={() => { setEditing(null); setShowForm(true); }} style={addBtnStyle}>+ Add EMI</button>
      </div>

      <div style={{ display: 'flex', gap: 12, marginBottom: 20, alignItems: 'center' }}>
        {['Active', 'Closed', 'Paused'].map(s => (
          <button key={s} onClick={() => setFilter(s)} style={{
            padding: '7px 16px', borderRadius: 20, border: 'none', cursor: 'pointer', fontSize: 13, fontWeight: 600,
            background: filter === s ? '#3b82f6' : '#f1f5f9', color: filter === s ? '#fff' : '#64748b',
          }}>{s}</button>
        ))}
        {filter === 'Active' && <div style={{ marginLeft: 'auto', fontWeight: 600, color: '#ef4444', fontSize: 16 }}>Monthly: {fmt(totalMonthly)}</div>}
      </div>

      {loading ? <p style={{ color: '#94a3b8' }}>Loading…</p> : (
        <div style={{ display: 'grid', gap: 16 }}>
          {items.length === 0
            ? <p style={{ color: '#94a3b8', textAlign: 'center', padding: 32 }}>No {filter.toLowerCase()} EMIs</p>
            : items.map(e => (
              <div key={e.id} style={{ background: '#fff', borderRadius: 12, padding: '20px 24px', boxShadow: '0 1px 6px rgba(0,0,0,0.05)' }}>
                <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start' }}>
                  <div>
                    <div style={{ fontWeight: 700, fontSize: 16 }}>{e.loanName}</div>
                    <div style={{ color: '#64748b', fontSize: 13, marginTop: 2 }}>{e.bankName} · {e.interestRate}% p.a.</div>
                  </div>
                  <div style={{ textAlign: 'right' }}>
                    <div style={{ fontWeight: 700, color: '#ef4444', fontSize: 18 }}>{fmt(e.emiAmount)}<span style={{ fontWeight: 400, fontSize: 12, color: '#94a3b8' }}>/mo</span></div>
                    <span style={{ fontSize: 11, padding: '2px 8px', borderRadius: 10, background: e.status === 'Active' ? '#dcfce7' : '#f1f5f9', color: e.status === 'Active' ? '#166534' : '#64748b' }}>{e.status}</span>
                  </div>
                </div>
                <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3,1fr)', gap: 12, marginTop: 16, padding: '12px 0', borderTop: '1px solid #f1f5f9' }}>
                  <Stat label="Total" value={fmt(e.totalAmount)} />
                  <Stat label="Progress" value={`${e.paidEmis}/${e.totalEmis} EMIs`} />
                  <Stat label="Next Due" value={new Date(e.nextDueDate).toLocaleDateString()} />
                </div>
                <div style={{ display: 'flex', justifyContent: 'flex-end', gap: 8, marginTop: 8 }}>
                  <button onClick={() => { setEditing(e); setShowForm(true); }} style={iconBtn('#3b82f6')}>✏️ Edit</button>
                  <button onClick={() => handleDelete(e.id)} style={iconBtn('#ef4444')}>🗑️ Delete</button>
                </div>
              </div>
            ))}
        </div>
      )}

      {showForm && (
        <EmiForm initial={editing} onClose={() => setShowForm(false)} onSaved={() => { setShowForm(false); load(); }} />
      )}
    </div>
  );
}

function Stat({ label, value }: { label: string; value: string }) {
  return (
    <div>
      <div style={{ fontSize: 11, color: '#94a3b8', marginBottom: 2 }}>{label}</div>
      <div style={{ fontWeight: 600, fontSize: 13 }}>{value}</div>
    </div>
  );
}

function EmiForm({ initial, onClose, onSaved }: { initial: Emi | null; onClose: () => void; onSaved: () => void }) {
  const [f, setF] = useState({
    loanName: initial?.loanName ?? '',
    bankName: initial?.bankName ?? '',
    totalAmount: initial?.totalAmount.toString() ?? '',
    emiAmount: initial?.emiAmount.toString() ?? '',
    totalEmis: initial?.totalEmis.toString() ?? '',
    paidEmis: initial?.paidEmis.toString() ?? '0',
    interestRate: initial?.interestRate.toString() ?? '',
    startDate: initial ? initial.startDate.slice(0, 10) : new Date().toISOString().slice(0, 10),
    nextDueDate: initial ? initial.nextDueDate.slice(0, 10) : new Date().toISOString().slice(0, 10),
    status: initial?.status ?? 'Active',
    description: initial?.description ?? '',
  });
  const [loading, setLoading] = useState(false);

  const set = (k: string) => (e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>) =>
    setF(p => ({ ...p, [k]: e.target.value }));

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setLoading(true);
    try {
      const payload = {
        ...f,
        totalAmount: parseFloat(f.totalAmount),
        emiAmount: parseFloat(f.emiAmount),
        totalEmis: parseInt(f.totalEmis),
        paidEmis: parseInt(f.paidEmis),
        interestRate: parseFloat(f.interestRate),
        startDate: new Date(f.startDate).toISOString(),
        nextDueDate: new Date(f.nextDueDate).toISOString(),
      };
      if (initial) await api.put(`/api/emis/${initial.id}`, payload);
      else await api.post('/api/emis', payload);
      onSaved();
    } catch (err: unknown) {
      alert(err instanceof Error ? err.message : 'Failed');
    } finally { setLoading(false); }
  }

  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', zIndex: 1000, display: 'flex', alignItems: 'center', justifyContent: 'center', overflow: 'auto', padding: 24 }}>
      <div style={{ background: '#fff', borderRadius: 16, padding: '28px 28px', width: 480, boxShadow: '0 8px 40px rgba(0,0,0,0.15)' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 20 }}>
          <h2 style={{ margin: 0, fontSize: 18, fontWeight: 700 }}>{initial ? 'Edit EMI' : 'Add EMI'}</h2>
          <button onClick={onClose} style={{ border: 'none', background: 'none', cursor: 'pointer', fontSize: 20, color: '#94a3b8' }}>×</button>
        </div>
        <form onSubmit={handleSubmit}>
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 12 }}>
            {[
              { label: 'Loan Name', key: 'loanName', type: 'text' },
              { label: 'Bank Name', key: 'bankName', type: 'text' },
              { label: 'Total Amount', key: 'totalAmount', type: 'number' },
              { label: 'EMI Amount/mo', key: 'emiAmount', type: 'number' },
              { label: 'Total EMIs', key: 'totalEmis', type: 'number' },
              { label: 'Paid EMIs', key: 'paidEmis', type: 'number' },
              { label: 'Interest Rate %', key: 'interestRate', type: 'number' },
            ].map(({ label, key, type }) => (
              <div key={key}>
                <label style={{ display: 'block', fontSize: 12, fontWeight: 500, marginBottom: 4, color: '#374151' }}>{label}</label>
                <input style={fieldInput} type={type} step="any" value={(f as Record<string,string>)[key]} onChange={set(key)} required />
              </div>
            ))}
            <div>
              <label style={{ display: 'block', fontSize: 12, fontWeight: 500, marginBottom: 4, color: '#374151' }}>Status</label>
              <select style={fieldInput} value={f.status} onChange={set('status')}>
                {['Active', 'Paused', 'Closed'].map(s => <option key={s} value={s}>{s}</option>)}
              </select>
            </div>
            <div>
              <label style={{ display: 'block', fontSize: 12, fontWeight: 500, marginBottom: 4, color: '#374151' }}>Start Date</label>
              <input style={fieldInput} type="date" value={f.startDate} onChange={set('startDate')} required />
            </div>
            <div>
              <label style={{ display: 'block', fontSize: 12, fontWeight: 500, marginBottom: 4, color: '#374151' }}>Next Due Date</label>
              <input style={fieldInput} type="date" value={f.nextDueDate} onChange={set('nextDueDate')} required />
            </div>
          </div>
          <div style={{ marginTop: 12 }}>
            <label style={{ display: 'block', fontSize: 12, fontWeight: 500, marginBottom: 4, color: '#374151' }}>Description</label>
            <input style={fieldInput} value={f.description} onChange={set('description')} placeholder="Optional" />
          </div>
          <div style={{ display: 'flex', gap: 8, marginTop: 20 }}>
            <button type="button" onClick={onClose} style={{ ...submitBtn, background: '#f1f5f9', color: '#374151' }}>Cancel</button>
            <button type="submit" disabled={loading} style={submitBtn}>{loading ? 'Saving…' : 'Save'}</button>
          </div>
        </form>
      </div>
    </div>
  );
}

const fieldInput: React.CSSProperties = { width: '100%', padding: '8px 10px', borderRadius: 8, border: '1px solid #e2e8f0', fontSize: 13, boxSizing: 'border-box', outline: 'none' };
const submitBtn: React.CSSProperties = { flex: 1, padding: '10px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const addBtnStyle: React.CSSProperties = { padding: '9px 18px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const iconBtn = (color: string): React.CSSProperties => ({ border: 'none', background: 'none', cursor: 'pointer', fontSize: 13, color, fontWeight: 600 });
