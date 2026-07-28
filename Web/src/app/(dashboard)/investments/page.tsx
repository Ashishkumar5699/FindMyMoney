'use client';

import { useEffect, useState, FormEvent } from 'react';
import { api } from '@/lib/api';

interface Investment {
  id: string;
  name: string;
  description?: string;
  principalAmount: number;
  interestRate: number;
  startDate: string;
  expectedEndDate: string;
  status: string;
  expectedReturnAmount: number;
  actualReturnAmount?: number;
  closedAt?: string;
}

export default function InvestmentsPage() {
  const [items, setItems] = useState<Investment[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editing, setEditing] = useState<Investment | null>(null);
  const [closing, setClosing] = useState<Investment | null>(null);
  const [filter, setFilter] = useState('Active');

  async function load() {
    setLoading(true);
    try {
      const data = await api.get<Investment[]>(`/api/investments?status=${filter}`);
      setItems(data ?? []);
    } catch { setItems([]); } finally { setLoading(false); }
  }

  useEffect(() => { load(); }, [filter]);

  async function handleDelete(id: string) {
    if (!confirm('Delete this investment?')) return;
    await api.delete(`/api/investments/${id}`);
    load();
  }

  const totalActive = items.filter(i => i.status === 'Active').reduce((s, i) => s + i.principalAmount, 0);
  const totalExpected = items.filter(i => i.status === 'Active').reduce((s, i) => s + i.expectedReturnAmount, 0);
  const fmt = (n: number) => `₹${n.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`;

  return (
    <div>
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 24 }}>
        <h1 style={{ margin: 0, fontSize: 24, fontWeight: 700 }}>Investments</h1>
        <button onClick={() => { setEditing(null); setShowForm(true); }} style={addBtnStyle}>+ Add Investment</button>
      </div>

      <div style={{ display: 'flex', gap: 12, marginBottom: 20, alignItems: 'center', flexWrap: 'wrap' }}>
        {['Active', 'Matured', 'Closed'].map(s => (
          <button key={s} onClick={() => setFilter(s)} style={{
            padding: '7px 16px', borderRadius: 20, border: 'none', cursor: 'pointer', fontSize: 13, fontWeight: 600,
            background: filter === s ? '#8b5cf6' : '#f1f5f9', color: filter === s ? '#fff' : '#64748b',
          }}>{s}</button>
        ))}
        {filter === 'Active' && items.length > 0 && (
          <div style={{ marginLeft: 'auto', display: 'flex', gap: 20 }}>
            <span style={{ fontWeight: 600, color: '#8b5cf6', fontSize: 14 }}>Invested: {fmt(totalActive)}</span>
            <span style={{ fontWeight: 600, color: '#10b981', fontSize: 14 }}>Expected return: {fmt(totalExpected)}</span>
          </div>
        )}
      </div>

      {loading ? <p style={{ color: '#94a3b8' }}>Loading…</p> : (
        <div style={{ display: 'grid', gap: 16 }}>
          {items.length === 0
            ? <p style={{ color: '#94a3b8', textAlign: 'center', padding: 32 }}>No {filter.toLowerCase()} investments</p>
            : items.map(inv => {
              const daysLeft = Math.ceil((new Date(inv.expectedEndDate).getTime() - Date.now()) / 86400000);
              const gain = inv.expectedReturnAmount - inv.principalAmount;
              return (
                <div key={inv.id} style={{ background: '#fff', borderRadius: 12, padding: '20px 24px', boxShadow: '0 1px 6px rgba(0,0,0,0.05)', borderLeft: '4px solid #8b5cf6' }}>
                  <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start' }}>
                    <div>
                      <div style={{ fontWeight: 700, fontSize: 16 }}>{inv.name}</div>
                      {inv.description && <div style={{ color: '#64748b', fontSize: 13, marginTop: 2 }}>{inv.description}</div>}
                    </div>
                    <div style={{ textAlign: 'right' }}>
                      <div style={{ fontWeight: 700, color: '#8b5cf6', fontSize: 18 }}>{fmt(inv.principalAmount)}</div>
                      <span style={{
                        fontSize: 11, padding: '2px 8px', borderRadius: 10,
                        background: inv.status === 'Active' ? '#ede9fe' : inv.status === 'Closed' ? '#f1f5f9' : '#dcfce7',
                        color: inv.status === 'Active' ? '#5b21b6' : inv.status === 'Closed' ? '#64748b' : '#166534',
                      }}>{inv.status}</span>
                    </div>
                  </div>

                  <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4,1fr)', gap: 12, marginTop: 16, padding: '12px 0', borderTop: '1px solid #f1f5f9' }}>
                    <Stat label="Rate" value={`${inv.interestRate}% p.a.`} />
                    <Stat label="Expected return" value={fmt(inv.expectedReturnAmount)} />
                    <Stat label="Gain" value={`+${fmt(gain)}`} color="#10b981" />
                    {inv.status === 'Active'
                      ? <Stat label={daysLeft > 0 ? 'Days left' : 'Overdue'} value={Math.abs(daysLeft).toString()} color={daysLeft < 0 ? '#ef4444' : undefined} />
                      : <Stat label="Closed on" value={inv.closedAt ? new Date(inv.closedAt).toLocaleDateString() : '—'} />}
                  </div>

                  <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 8, marginTop: 4, fontSize: 12, color: '#94a3b8' }}>
                    <span>Start: {new Date(inv.startDate).toLocaleDateString()}</span>
                    <span>End: {new Date(inv.expectedEndDate).toLocaleDateString()}</span>
                  </div>

                  {inv.status === 'Closed' && inv.actualReturnAmount != null && (
                    <div style={{ marginTop: 8, fontSize: 13, color: '#10b981', fontWeight: 600 }}>
                      Actual payout: {fmt(inv.actualReturnAmount)}
                    </div>
                  )}

                  <div style={{ display: 'flex', justifyContent: 'flex-end', gap: 8, marginTop: 12 }}>
                    {inv.status === 'Active' && (
                      <button onClick={() => setClosing(inv)} style={iconBtn('#10b981')}>Close Investment</button>
                    )}
                    <button onClick={() => { setEditing(inv); setShowForm(true); }} style={iconBtn('#3b82f6')}>Edit</button>
                    <button onClick={() => handleDelete(inv.id)} style={iconBtn('#ef4444')}>Delete</button>
                  </div>
                </div>
              );
            })}
        </div>
      )}

      {showForm && (
        <InvestmentForm initial={editing} onClose={() => setShowForm(false)} onSaved={() => { setShowForm(false); load(); }} />
      )}
      {closing && (
        <CloseForm investment={closing} onClose={() => setClosing(null)} onSaved={() => { setClosing(null); load(); }} />
      )}
    </div>
  );
}

function Stat({ label, value, color }: { label: string; value: string; color?: string }) {
  return (
    <div>
      <div style={{ fontSize: 11, color: '#94a3b8', marginBottom: 2 }}>{label}</div>
      <div style={{ fontWeight: 600, fontSize: 13, color: color ?? '#1e293b' }}>{value}</div>
    </div>
  );
}

function InvestmentForm({ initial, onClose, onSaved }: { initial: Investment | null; onClose: () => void; onSaved: () => void }) {
  const today = new Date().toISOString().slice(0, 10);
  const nextYear = new Date(Date.now() + 365 * 86400000).toISOString().slice(0, 10);
  const [f, setF] = useState({
    name: initial?.name ?? '',
    description: initial?.description ?? '',
    principalAmount: initial?.principalAmount.toString() ?? '',
    interestRate: initial?.interestRate.toString() ?? '',
    startDate: initial ? initial.startDate.slice(0, 10) : today,
    expectedEndDate: initial ? initial.expectedEndDate.slice(0, 10) : nextYear,
  });
  const [loading, setLoading] = useState(false);
  const set = (k: string) => (e: React.ChangeEvent<HTMLInputElement>) => setF(p => ({ ...p, [k]: e.target.value }));

  const preview = f.principalAmount && f.interestRate && f.startDate && f.expectedEndDate
    ? (() => {
        const p = parseFloat(f.principalAmount);
        const r = parseFloat(f.interestRate);
        const yrs = (new Date(f.expectedEndDate).getTime() - new Date(f.startDate).getTime()) / (365 * 86400000);
        return Math.round((p + p * r / 100 * yrs) * 100) / 100;
      })()
    : null;

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setLoading(true);
    try {
      const payload = {
        name: f.name,
        description: f.description || null,
        principalAmount: parseFloat(f.principalAmount),
        interestRate: parseFloat(f.interestRate),
        startDate: new Date(f.startDate).toISOString(),
        expectedEndDate: new Date(f.expectedEndDate).toISOString(),
      };
      if (initial) await api.put(`/api/investments/${initial.id}`, payload);
      else await api.post('/api/investments', payload);
      onSaved();
    } catch (err: unknown) {
      alert(err instanceof Error ? err.message : 'Failed');
    } finally { setLoading(false); }
  }

  const fmt = (n: number) => `₹${n.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`;

  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', zIndex: 1000, display: 'flex', alignItems: 'center', justifyContent: 'center', overflow: 'auto', padding: 24 }}>
      <div style={{ background: '#fff', borderRadius: 16, padding: '28px 28px', width: 480, boxShadow: '0 8px 40px rgba(0,0,0,0.15)' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 20 }}>
          <h2 style={{ margin: 0, fontSize: 18, fontWeight: 700 }}>{initial ? 'Edit Investment' : 'Add Investment'}</h2>
          <button onClick={onClose} style={{ border: 'none', background: 'none', cursor: 'pointer', fontSize: 20, color: '#94a3b8' }}>×</button>
        </div>
        <form onSubmit={handleSubmit}>
          <div style={{ display: 'grid', gap: 12 }}>
            <Field label="Name" type="text" value={f.name} onChange={set('name')} required />
            <Field label="Description (optional)" type="text" value={f.description} onChange={set('description')} />
            <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 12 }}>
              <Field label="Amount (₹)" type="number" value={f.principalAmount} onChange={set('principalAmount')} required />
              <Field label="Interest Rate % p.a." type="number" value={f.interestRate} onChange={set('interestRate')} required />
              <Field label="Start Date" type="date" value={f.startDate} onChange={set('startDate')} required />
              <Field label="Expected End Date" type="date" value={f.expectedEndDate} onChange={set('expectedEndDate')} required />
            </div>
            {preview != null && (
              <div style={{ background: '#ede9fe', borderRadius: 8, padding: '10px 14px', fontSize: 13, color: '#5b21b6', fontWeight: 600 }}>
                Expected return: {fmt(preview)} (+{fmt(preview - parseFloat(f.principalAmount))})
              </div>
            )}
          </div>
          <div style={{ display: 'flex', gap: 8, marginTop: 20 }}>
            <button type="button" onClick={onClose} style={{ ...submitBtn, background: '#f1f5f9', color: '#374151' }}>Cancel</button>
            <button type="submit" disabled={loading} style={{ ...submitBtn, background: '#8b5cf6' }}>{loading ? 'Saving…' : 'Save'}</button>
          </div>
        </form>
      </div>
    </div>
  );
}

function CloseForm({ investment, onClose, onSaved }: { investment: Investment; onClose: () => void; onSaved: () => void }) {
  const [amount, setAmount] = useState(investment.expectedReturnAmount.toString());
  const [loading, setLoading] = useState(false);
  const fmt = (n: number) => `₹${n.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`;

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setLoading(true);
    try {
      await api.put(`/api/investments/${investment.id}/close`, { actualReturnAmount: parseFloat(amount) });
      onSaved();
    } catch (err: unknown) {
      alert(err instanceof Error ? err.message : 'Failed');
    } finally { setLoading(false); }
  }

  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', zIndex: 1000, display: 'flex', alignItems: 'center', justifyContent: 'center', padding: 24 }}>
      <div style={{ background: '#fff', borderRadius: 16, padding: '28px 28px', width: 380, boxShadow: '0 8px 40px rgba(0,0,0,0.15)' }}>
        <h2 style={{ margin: '0 0 8px', fontSize: 18, fontWeight: 700 }}>Close Investment</h2>
        <p style={{ margin: '0 0 20px', fontSize: 13, color: '#64748b' }}>
          {investment.name} · Expected: {fmt(investment.expectedReturnAmount)}
        </p>
        <form onSubmit={handleSubmit}>
          <Field label="Actual Return Amount (₹)" type="number" value={amount} onChange={e => setAmount(e.target.value)} required />
          <div style={{ display: 'flex', gap: 8, marginTop: 20 }}>
            <button type="button" onClick={onClose} style={{ ...submitBtn, background: '#f1f5f9', color: '#374151' }}>Cancel</button>
            <button type="submit" disabled={loading} style={{ ...submitBtn, background: '#10b981' }}>{loading ? 'Closing…' : 'Confirm Close'}</button>
          </div>
        </form>
      </div>
    </div>
  );
}

function Field({ label, type, value, onChange, required }: { label: string; type: string; value: string; onChange: (e: React.ChangeEvent<HTMLInputElement>) => void; required?: boolean }) {
  return (
    <div>
      <label style={{ display: 'block', fontSize: 12, fontWeight: 500, marginBottom: 4, color: '#374151' }}>{label}</label>
      <input style={fieldInput} type={type} step="any" value={value} onChange={onChange} required={required} />
    </div>
  );
}

const fieldInput: React.CSSProperties = { width: '100%', padding: '8px 10px', borderRadius: 8, border: '1px solid #e2e8f0', fontSize: 13, boxSizing: 'border-box', outline: 'none' };
const submitBtn: React.CSSProperties = { flex: 1, padding: '10px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const addBtnStyle: React.CSSProperties = { padding: '9px 18px', borderRadius: 8, border: 'none', background: '#8b5cf6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const iconBtn = (color: string): React.CSSProperties => ({ border: 'none', background: 'none', cursor: 'pointer', fontSize: 13, color, fontWeight: 600 });
