'use client';

import { useEffect, useState, useRef, FormEvent } from 'react';
import { api } from '@/lib/api';

interface Transfer {
  id: string;
  fromSourceId: string; fromSourceName: string;
  toSourceId?: string;  toSourceName?: string;
  amount: number;
  date: string;
  notes?: string;
  createdAt: string;
}

interface PaymentSource { id: string; name: string; type: string; isActive: boolean; balance: number; }

interface DateGroup { dateKey: string; displayDate: string; items: Transfer[]; dayTotal: number; }

const fmt     = (n: number) => `₹${Math.abs(n).toLocaleString('en-IN', { minimumFractionDigits: 2 })}`;
const fmtDate = (d: string) => new Date(d).toLocaleDateString('en-IN', { day: 'numeric', month: 'short', year: 'numeric' });

function groupByDate(items: Transfer[]): DateGroup[] {
  const sorted = [...items].sort((a, b) => new Date(b.date).getTime() - new Date(a.date).getTime());
  const map = new Map<string, Transfer[]>();
  for (const t of sorted) {
    const key = t.date.slice(0, 10);
    if (!map.has(key)) map.set(key, []);
    map.get(key)!.push(t);
  }
  return [...map.entries()].map(([key, rows]) => ({
    dateKey: key,
    displayDate: new Date(key + 'T00:00:00').toLocaleDateString('en-IN', { day: 'numeric', month: 'short', year: 'numeric' }),
    items: rows,
    dayTotal: rows.reduce((s, t) => s + t.amount, 0),
  }));
}

const now = new Date();
const YEARS  = [2024, 2025, 2026];
const MONTHS = Array.from({ length: 12 }, (_, i) => ({ value: i + 1, label: new Date(2000, i).toLocaleString('default', { month: 'long' }) }));

export default function TransfersPage() {
  const [transfers, setTransfers] = useState<Transfer[]>([]);
  const [sources, setSources]     = useState<PaymentSource[]>([]);
  const [loading, setLoading]     = useState(true);
  const [showForm, setShowForm]   = useState(false);
  const [year, setYear]           = useState(now.getFullYear());
  const [month, setMonth]         = useState(now.getMonth() + 1);

  async function load() {
    setLoading(true);
    try {
      const [t, s] = await Promise.all([
        api.get<Transfer[]>(`/api/transfers?year=${year}&month=${month}`),
        api.get<PaymentSource[]>('/api/payment-sources'),
      ]);
      setTransfers(t ?? []);
      setSources((s ?? []).filter(src => src.isActive));
    } catch { setTransfers([]); } finally { setLoading(false); }
  }

  useEffect(() => { load(); }, [year, month]);

  async function handleDelete(id: string) {
    if (!confirm('Delete this transfer? Balances will NOT be reversed automatically.')) return;
    try {
      await api.delete(`/api/transfers/${id}`);
      load();
    } catch (e: unknown) {
      alert(e instanceof Error ? e.message : 'Failed to delete');
    }
  }

  const groups = groupByDate(transfers);

  return (
    <div>
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 24 }}>
        <h1 style={{ margin: 0, fontSize: 24, fontWeight: 700 }}>Transfers</h1>
        <button onClick={() => setShowForm(true)} style={addBtnStyle}>+ New Transfer</button>
      </div>

      <div style={{ display: 'flex', gap: 12, marginBottom: 20 }}>
        <select value={year} onChange={e => setYear(+e.target.value)} style={selectStyle}>
          {YEARS.map(y => <option key={y} value={y}>{y}</option>)}
        </select>
        <select value={month} onChange={e => setMonth(+e.target.value)} style={selectStyle}>
          {MONTHS.map(m => <option key={m.value} value={m.value}>{m.label}</option>)}
        </select>
      </div>

      {/* Source balances strip */}
      {sources.length > 0 && (
        <div style={{ display: 'flex', gap: 10, flexWrap: 'wrap', marginBottom: 20 }}>
          {sources.map(s => (
            <div key={s.id} style={{ background: '#fff', borderRadius: 10, boxShadow: '0 1px 4px rgba(0,0,0,0.07)', padding: '8px 14px', fontSize: 13 }}>
              <span style={{ color: '#64748b' }}>{s.name}</span>
              <span style={{ marginLeft: 8, fontWeight: 700, color: s.balance >= 0 ? '#10b981' : '#ef4444' }}>
                {s.balance >= 0 ? '' : '-'}{fmt(s.balance)}
              </span>
            </div>
          ))}
        </div>
      )}

      {loading ? <p style={{ color: '#94a3b8' }}>Loading…</p> : (
        <>
          {transfers.length === 0 && (
            <div style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: 40, textAlign: 'center', color: '#94a3b8' }}>
              No transfers this month. Record a transfer to move money between your accounts.
            </div>
          )}
          {groups.map(group => (
            <div key={group.dateKey} style={{ marginBottom: 20 }}>
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 8 }}>
                <span style={{ fontSize: 12, fontWeight: 700, color: '#64748b', textTransform: 'uppercase', letterSpacing: 0.5 }}>
                  {group.displayDate}
                </span>
                <span style={{ fontSize: 13, fontWeight: 600, color: '#3b82f6' }}>
                  {fmt(group.dayTotal)} transferred
                </span>
              </div>
              <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
                {group.items.map(t => (
                  <div key={t.id} style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: '14px 18px', display: 'flex', alignItems: 'center', gap: 14, borderLeft: '4px solid #3b82f6' }}>
                    <div style={{ flex: 1 }}>
                      <div style={{ display: 'flex', alignItems: 'center', gap: 6, flexWrap: 'wrap', marginBottom: 3 }}>
                        <span style={{ fontWeight: 700, fontSize: 14 }}>{t.fromSourceName}</span>
                        <span style={{ color: '#94a3b8', fontSize: 13 }}>→</span>
                        <span style={{ fontWeight: 700, fontSize: 14, color: t.toSourceName ? '#374151' : '#94a3b8' }}>
                          {t.toSourceName ?? 'External / Cash out'}
                        </span>
                      </div>
                      {t.notes && <p style={{ margin: 0, fontSize: 12, color: '#64748b' }}>{t.notes}</p>}
                    </div>
                    <div style={{ textAlign: 'right', flexShrink: 0 }}>
                      <div style={{ fontWeight: 700, fontSize: 17, color: '#3b82f6' }}>{fmt(t.amount)}</div>
                      <button
                        onClick={() => handleDelete(t.id)}
                        style={{ marginTop: 4, border: 'none', background: 'none', cursor: 'pointer', fontSize: 14, color: '#ef4444' }}
                      >
                        🗑️
                      </button>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          ))}
        </>
      )}

      {showForm && (
        <TransferForm
          sources={sources}
          onClose={() => setShowForm(false)}
          onSaved={() => { setShowForm(false); load(); }}
        />
      )}
    </div>
  );
}

function TransferForm({ sources, onClose, onSaved }: { sources: PaymentSource[]; onClose: () => void; onSaved: () => void }) {
  const [fromId, setFromId]   = useState('');
  const [toId, setToId]       = useState('');
  const [amount, setAmount]   = useState('');
  const [date, setDate]       = useState(new Date().toISOString().slice(0, 10));
  const [notes, setNotes]     = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError]     = useState('');
  const didInit = useRef(false);

  useEffect(() => {
    if (!didInit.current && sources.length > 0) {
      setFromId(sources[0].id);
      didInit.current = true;
    }
  }, [sources]);

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    if (!fromId) { setError('Select a source account'); return; }
    if (!amount || +amount <= 0) { setError('Enter a positive amount'); return; }
    if (fromId === toId && toId !== '') { setError('From and To source must be different'); return; }
    setLoading(true); setError('');
    try {
      await api.post('/api/transfers', {
        fromSourceId: fromId,
        toSourceId: toId || null,
        amount: +amount,
        date: new Date(date + 'T00:00:00').toISOString(),
        notes: notes.trim() || null,
      });
      onSaved();
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'Failed to save transfer');
    } finally { setLoading(false); }
  }

  const fromSource = sources.find(s => s.id === fromId);

  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', zIndex: 1000, display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '0 16px' }}>
      <div style={{ background: '#fff', borderRadius: 16, padding: 28, width: '100%', maxWidth: 420, boxShadow: '0 8px 40px rgba(0,0,0,0.15)' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 20 }}>
          <h2 style={{ margin: 0, fontSize: 18, fontWeight: 700 }}>New Transfer</h2>
          <button onClick={onClose} style={{ border: 'none', background: 'none', cursor: 'pointer', fontSize: 20, color: '#94a3b8' }}>×</button>
        </div>

        {sources.length === 0 ? (
          <p style={{ color: '#94a3b8', fontSize: 14 }}>No active payment sources found.</p>
        ) : (
          <form onSubmit={handleSubmit}>
            <div style={{ marginBottom: 14 }}>
              <label style={labelStyle}>From Account</label>
              <select style={fieldInput} value={fromId} onChange={e => setFromId(e.target.value)}>
                {sources.map(s => <option key={s.id} value={s.id}>{s.name} ({s.type})</option>)}
              </select>
              {fromSource && (
                <p style={{ margin: '4px 0 0', fontSize: 11, color: '#64748b' }}>
                  Current balance: <strong style={{ color: fromSource.balance >= 0 ? '#10b981' : '#ef4444' }}>{fromSource.balance >= 0 ? '' : '-'}{fmt(fromSource.balance)}</strong>
                </p>
              )}
            </div>

            <div style={{ marginBottom: 14 }}>
              <label style={labelStyle}>To Account <span style={{ color: '#94a3b8', fontWeight: 400 }}>(leave blank = external / cash out)</span></label>
              <select style={fieldInput} value={toId} onChange={e => setToId(e.target.value)}>
                <option value="">— External / Cash out —</option>
                {sources.filter(s => s.id !== fromId).map(s => <option key={s.id} value={s.id}>{s.name} ({s.type})</option>)}
              </select>
            </div>

            <div style={{ marginBottom: 14 }}>
              <label style={labelStyle}>Amount (₹)</label>
              <input style={fieldInput} type="number" min="0.01" step="0.01" placeholder="0.00" value={amount} onChange={e => setAmount(e.target.value)} />
            </div>

            <div style={{ marginBottom: 14 }}>
              <label style={labelStyle}>Date</label>
              <input style={fieldInput} type="date" value={date} onChange={e => setDate(e.target.value)} />
            </div>

            <div style={{ marginBottom: 14 }}>
              <label style={labelStyle}>Notes (optional)</label>
              <input style={fieldInput} placeholder="e.g. ATM withdrawal, salary credit…" value={notes} onChange={e => setNotes(e.target.value)} />
            </div>

            {error && <p style={{ color: '#ef4444', fontSize: 13, marginBottom: 12 }}>{error}</p>}

            <div style={{ display: 'flex', gap: 8 }}>
              <button type="button" onClick={onClose} style={{ ...submitBtn, background: '#f1f5f9', color: '#374151' }}>Cancel</button>
              <button type="submit" disabled={loading} style={submitBtn}>{loading ? 'Saving…' : 'Transfer'}</button>
            </div>
          </form>
        )}
      </div>
    </div>
  );
}

const fieldInput: React.CSSProperties   = { width: '100%', padding: '9px 12px', borderRadius: 8, border: '1px solid #e2e8f0', fontSize: 14, boxSizing: 'border-box', outline: 'none' };
const submitBtn: React.CSSProperties    = { flex: 1, padding: '10px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const addBtnStyle: React.CSSProperties = { padding: '9px 18px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const selectStyle: React.CSSProperties = { padding: '8px 12px', borderRadius: 8, border: '1px solid #e2e8f0', fontSize: 14 };
const labelStyle: React.CSSProperties  = { display: 'block', fontSize: 13, fontWeight: 500, marginBottom: 4, color: '#374151' };
