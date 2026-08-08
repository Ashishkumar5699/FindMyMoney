'use client';

import { useEffect, useState, useRef, FormEvent } from 'react';
import { api } from '@/lib/api';

interface CcBill {
  id: string; paymentSourceId: string; paymentSourceName: string;
  billingYear: number; billingMonth: number;
  totalAmount: number; billingDate: string; dueDate: string;
  status: string; paidAt?: string;
}

interface PaymentSource { id: string; name: string; type: string; isActive: boolean; billingCycleDay?: number; dueDaysAfterBilling?: number; }

const now = new Date();
const MONTHS = Array.from({ length: 12 }, (_, i) => ({ value: i + 1, label: new Date(2000, i).toLocaleString('default', { month: 'long' }) }));

const fmt     = (n: number) => `₹${n.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`;
const fmtDate = (d: string) => new Date(d + (d.includes('T') ? '' : 'T00:00:00')).toLocaleDateString('en-IN', { day: 'numeric', month: 'short', year: 'numeric' });
// Compute days left using local midnight so timezone doesn't cause off-by-one
function daysFromNow(dateStr: string): number {
  const due   = new Date(dateStr.slice(0, 10) + 'T00:00:00');
  const today = new Date(); today.setHours(0, 0, 0, 0);
  return Math.ceil((due.getTime() - today.getTime()) / 86400000);
}

function statusBadge(status: string) {
  if (status === 'Paid') return { bg: '#dcfce7', color: '#166534', label: 'Paid' };
  return { bg: '#fef3c7', color: '#92400e', label: 'Pending' };
}

export default function CcBillsPage() {
  const [bills, setBills]       = useState<CcBill[]>([]);
  const [sources, setSources]   = useState<PaymentSource[]>([]);
  const [loading, setLoading]   = useState(true);
  const [showGen, setShowGen]   = useState(false);
  const [editing, setEditing]   = useState<CcBill | null>(null);
  const [year, setYear]         = useState(now.getFullYear());
  const [month, setMonth]       = useState(now.getMonth() + 1);

  async function load() {
    setLoading(true);
    try {
      const [b, s] = await Promise.all([
        api.get<CcBill[]>(`/api/cc-bills?year=${year}&month=${month}`),
        api.get<PaymentSource[]>('/api/payment-sources'),
      ]);
      setBills(b ?? []);
      setSources((s ?? []).filter(src => src.type === 'CreditCard' && src.isActive));
    } catch { setBills([]); } finally { setLoading(false); }
  }

  useEffect(() => { load(); }, [year, month]);

  async function handleMarkPaid(bill: CcBill) {
    if (!confirm(`Mark "${bill.paymentSourceName}" bill for ${MONTHS[bill.billingMonth - 1].label} ${bill.billingYear} as paid?\n\nAmount: ${fmt(bill.totalAmount)}`)) return;
    try {
      await api.put(`/api/cc-bills/${bill.id}/pay`, {});
      load();
    } catch (e: unknown) {
      alert(e instanceof Error ? e.message : 'Failed to mark paid');
    }
  }

  async function handleDelete(bill: CcBill) {
    if (!confirm(`Delete this bill for ${bill.paymentSourceName}? This cannot be undone.`)) return;
    try {
      await api.delete(`/api/cc-bills/${bill.id}`);
      load();
    } catch (e: unknown) {
      alert(e instanceof Error ? e.message : 'Failed to delete');
    }
  }

  const pending = bills.filter(b => b.status !== 'Paid');
  const paid    = bills.filter(b => b.status === 'Paid');
  const totalPending = pending.reduce((s, b) => s + b.totalAmount, 0);

  return (
    <div>
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 24 }}>
        <h1 style={{ margin: 0, fontSize: 24, fontWeight: 700 }}>CC Bills</h1>
        <button onClick={() => setShowGen(true)} style={addBtnStyle}>+ Generate Bill</button>
      </div>

      <div style={{ display: 'flex', gap: 12, marginBottom: 20, alignItems: 'center' }}>
        <select value={year} onChange={e => setYear(+e.target.value)} style={selectStyle}>
          {[2024, 2025, 2026].map(y => <option key={y} value={y}>{y}</option>)}
        </select>
        <select value={month} onChange={e => setMonth(+e.target.value)} style={selectStyle}>
          {MONTHS.map(m => <option key={m.value} value={m.value}>{m.label}</option>)}
        </select>
        {pending.length > 0 && (
          <div style={{ marginLeft: 'auto', fontWeight: 600, color: '#f59e0b', fontSize: 16 }}>
            Due: {fmt(totalPending)}
          </div>
        )}
      </div>

      {loading ? <p style={{ color: '#94a3b8' }}>Loading…</p> : (
        <>
          {bills.length === 0 && (
            <div style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: 32, textAlign: 'center', color: '#94a3b8' }}>
              No CC bills for this period. Click &ldquo;Generate Bill&rdquo; to create one from your CC expenses.
            </div>
          )}
          {pending.length > 0 && (
            <Section title="Pending" bills={pending} onMarkPaid={handleMarkPaid} onEdit={setEditing} onDelete={handleDelete} />
          )}
          {paid.length > 0 && (
            <Section title="Paid" bills={paid} onMarkPaid={handleMarkPaid} onEdit={setEditing} onDelete={handleDelete} />
          )}
        </>
      )}

      {showGen && (
        <GenerateForm
          sources={sources}
          onClose={() => setShowGen(false)}
          onGenerated={() => { setShowGen(false); load(); }}
        />
      )}

      {editing && (
        <EditBillForm
          bill={editing}
          onClose={() => setEditing(null)}
          onSaved={() => { setEditing(null); load(); }}
        />
      )}
    </div>
  );
}

function Section({ title, bills, onMarkPaid, onEdit, onDelete }: {
  title: string; bills: CcBill[];
  onMarkPaid: (b: CcBill) => void;
  onEdit: (b: CcBill) => void;
  onDelete: (b: CcBill) => void;
}) {
  return (
    <div style={{ marginBottom: 24 }}>
      <p style={{ margin: '0 0 10px', fontSize: 12, fontWeight: 700, color: '#94a3b8', textTransform: 'uppercase', letterSpacing: 1 }}>{title}</p>
      <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
        {bills.map(bill => {
          const badge    = statusBadge(bill.status);
          const daysLeft = daysFromNow(bill.dueDate);
          const overdue  = bill.status !== 'Paid' && daysLeft < 0;
          const urgent   = bill.status !== 'Paid' && daysLeft >= 0 && daysLeft <= 5;
          return (
            <div key={bill.id} style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: '16px 20px', display: 'flex', alignItems: 'center', gap: 16, borderLeft: `4px solid ${overdue ? '#ef4444' : urgent ? '#f97316' : bill.status === 'Paid' ? '#10b981' : '#f59e0b'}` }}>
              <div style={{ flex: 1 }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: 8, flexWrap: 'wrap', marginBottom: 4 }}>
                  <span style={{ fontWeight: 700, fontSize: 15 }}>{bill.paymentSourceName}</span>
                  <span style={{ padding: '2px 8px', borderRadius: 10, fontSize: 11, fontWeight: 700, background: badge.bg, color: badge.color }}>{badge.label}</span>
                  {overdue && <span style={{ fontSize: 11, color: '#ef4444', fontWeight: 700 }}>OVERDUE</span>}
                  {urgent && <span style={{ fontSize: 11, color: '#f97316', fontWeight: 700 }}>DUE SOON</span>}
                </div>
                <div style={{ fontSize: 12, color: '#64748b', display: 'flex', gap: 16, flexWrap: 'wrap' }}>
                  <span>Bill date: {fmtDate(bill.billingDate)}</span>
                  <span>Due: {fmtDate(bill.dueDate)}{bill.status !== 'Paid' && daysLeft >= 0 ? ` (${daysLeft}d left)` : ''}</span>
                  {bill.paidAt && <span>Paid on: {fmtDate(bill.paidAt)}</span>}
                </div>
              </div>
              <div style={{ textAlign: 'right', flexShrink: 0 }}>
                <div style={{ fontWeight: 700, fontSize: 18, color: bill.status === 'Paid' ? '#10b981' : overdue ? '#ef4444' : '#f59e0b' }}>{fmt(bill.totalAmount)}</div>
                <div style={{ display: 'flex', gap: 6, marginTop: 6, justifyContent: 'flex-end' }}>
                  {bill.status !== 'Paid' && (
                    <button onClick={() => onMarkPaid(bill)} style={{ padding: '5px 10px', borderRadius: 7, border: 'none', background: '#10b981', color: '#fff', fontSize: 12, fontWeight: 600, cursor: 'pointer' }}>
                      Mark Paid
                    </button>
                  )}
                  <button onClick={() => onEdit(bill)} style={{ padding: '5px 8px', borderRadius: 7, border: '1px solid #e2e8f0', background: '#fff', color: '#3b82f6', fontSize: 12, cursor: 'pointer' }}>✏️</button>
                  <button onClick={() => onDelete(bill)} style={{ padding: '5px 8px', borderRadius: 7, border: '1px solid #fee2e2', background: '#fff', color: '#ef4444', fontSize: 12, cursor: 'pointer' }}>🗑️</button>
                </div>
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
}

function EditBillForm({ bill, onClose, onSaved }: { bill: CcBill; onClose: () => void; onSaved: () => void }) {
  const [amount, setAmount]   = useState(bill.totalAmount.toString());
  const [dueDate, setDueDate] = useState(bill.dueDate.slice(0, 10));
  const [loading, setLoading] = useState(false);
  const [error, setError]     = useState('');

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    if (!amount || +amount <= 0) { setError('Enter a valid amount'); return; }
    setLoading(true); setError('');
    try {
      await api.put(`/api/cc-bills/${bill.id}`, { totalAmount: +amount, dueDate: new Date(dueDate + 'T00:00:00').toISOString() });
      onSaved();
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'Failed to update');
    } finally { setLoading(false); }
  }

  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', zIndex: 1000, display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '0 16px' }}>
      <div style={{ background: '#fff', borderRadius: 16, padding: 28, width: '100%', maxWidth: 380, boxShadow: '0 8px 40px rgba(0,0,0,0.15)' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 20 }}>
          <h2 style={{ margin: 0, fontSize: 18, fontWeight: 700 }}>Edit Bill</h2>
          <button onClick={onClose} style={{ border: 'none', background: 'none', cursor: 'pointer', fontSize: 20, color: '#94a3b8' }}>×</button>
        </div>
        <p style={{ margin: '0 0 16px', fontSize: 13, color: '#64748b' }}>
          {bill.paymentSourceName} — {MONTHS[bill.billingMonth - 1].label} {bill.billingYear}
        </p>
        <form onSubmit={handleSubmit}>
          <div style={{ marginBottom: 14 }}>
            <label style={labelStyle}>Total Amount (₹)</label>
            <input style={fieldInput} type="number" min="0.01" step="0.01" value={amount} onChange={e => setAmount(e.target.value)} />
          </div>
          <div style={{ marginBottom: 14 }}>
            <label style={labelStyle}>Due Date</label>
            <input style={fieldInput} type="date" value={dueDate} onChange={e => setDueDate(e.target.value)} />
            <p style={{ margin: '4px 0 0', fontSize: 11, color: '#94a3b8' }}>
              Set the exact due date from your bank statement
            </p>
          </div>
          {error && <p style={{ color: '#ef4444', fontSize: 13, marginBottom: 12 }}>{error}</p>}
          <div style={{ display: 'flex', gap: 8 }}>
            <button type="button" onClick={onClose} style={{ ...submitBtn, background: '#f1f5f9', color: '#374151' }}>Cancel</button>
            <button type="submit" disabled={loading} style={submitBtn}>{loading ? 'Saving…' : 'Save'}</button>
          </div>
        </form>
      </div>
    </div>
  );
}

function GenerateForm({ sources, onClose, onGenerated }: { sources: PaymentSource[]; onClose: () => void; onGenerated: () => void }) {
  const [sourceId, setSourceId] = useState('');
  const [year, setYear]         = useState(now.getFullYear());
  const [month, setMonth]       = useState(now.getMonth() + 1);
  const [amount, setAmount]     = useState('');
  const [loading, setLoading]   = useState(false);
  const [error, setError]       = useState('');
  const didInit = useRef(false);

  useEffect(() => {
    if (!didInit.current && sources.length > 0) {
      setSourceId(sources[0].id);
      didInit.current = true;
    }
  }, [sources]);

  const selectedSource = sources.find(s => s.id === sourceId);

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    if (!sourceId) { setError('Select a credit card'); return; }
    if (!amount || +amount <= 0) { setError('Enter the exact bill amount from your bank'); return; }
    setLoading(true); setError('');
    try {
      await api.post('/api/cc-bills', { paymentSourceId: sourceId, year, month, overrideAmount: +amount });
      onGenerated();
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'Failed to generate bill');
    } finally { setLoading(false); }
  }

  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', zIndex: 1000, display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '0 16px' }}>
      <div style={{ background: '#fff', borderRadius: 16, padding: 28, width: '100%', maxWidth: 400, boxShadow: '0 8px 40px rgba(0,0,0,0.15)' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 20 }}>
          <h2 style={{ margin: 0, fontSize: 18, fontWeight: 700 }}>Generate CC Bill</h2>
          <button onClick={onClose} style={{ border: 'none', background: 'none', cursor: 'pointer', fontSize: 20, color: '#94a3b8' }}>×</button>
        </div>
        {sources.length === 0 ? (
          <p style={{ color: '#94a3b8', fontSize: 14 }}>No active credit cards found. Add a Credit Card in Payment Sources first.</p>
        ) : (
          <form onSubmit={handleSubmit}>
            <div style={{ marginBottom: 14 }}>
              <label style={labelStyle}>Credit Card</label>
              <select style={fieldInput} value={sourceId} onChange={e => setSourceId(e.target.value)}>
                {sources.map(s => <option key={s.id} value={s.id}>{s.name}</option>)}
              </select>
              {selectedSource && !selectedSource.dueDaysAfterBilling && (
                <p style={{ margin: '6px 0 0', fontSize: 11, color: '#f59e0b', background: '#fef3c7', padding: '5px 8px', borderRadius: 6 }}>
                  ⚠️ &ldquo;Due days after billing&rdquo; not set for this card — due date will default to 20 days. Edit the card in Payment Sources to fix, or correct it after generating using the ✏️ edit button.
                </p>
              )}
            </div>
            <div style={{ marginBottom: 14 }}>
              <label style={labelStyle}>Billing Month</label>
              <div style={{ display: 'flex', gap: 8 }}>
                <select style={{ ...fieldInput, flex: 1 }} value={month} onChange={e => setMonth(+e.target.value)}>
                  {MONTHS.map(m => <option key={m.value} value={m.value}>{m.label}</option>)}
                </select>
                <select style={{ ...fieldInput, width: 90 }} value={year} onChange={e => setYear(+e.target.value)}>
                  {[2024, 2025, 2026].map(y => <option key={y} value={y}>{y}</option>)}
                </select>
              </div>
            </div>
            <div style={{ marginBottom: 14 }}>
              <label style={labelStyle}>Bill Amount (₹)</label>
              <input
                style={fieldInput}
                type="number"
                min="0.01"
                step="0.01"
                placeholder="Enter exact amount from bank statement"
                value={amount}
                onChange={e => setAmount(e.target.value)}
              />
              <p style={{ fontSize: 11, color: '#94a3b8', margin: '4px 0 0' }}>
                Enter the total amount shown on your bank / CC statement
              </p>
            </div>
            {error && <p style={{ color: '#ef4444', fontSize: 13, marginBottom: 12 }}>{error}</p>}
            <div style={{ display: 'flex', gap: 8 }}>
              <button type="button" onClick={onClose} style={{ ...submitBtn, background: '#f1f5f9', color: '#374151' }}>Cancel</button>
              <button type="submit" disabled={loading} style={submitBtn}>{loading ? 'Generating…' : 'Generate'}</button>
            </div>
          </form>
        )}
      </div>
    </div>
  );
}

const fieldInput: React.CSSProperties = { width: '100%', padding: '9px 12px', borderRadius: 8, border: '1px solid #e2e8f0', fontSize: 14, boxSizing: 'border-box', outline: 'none' };
const submitBtn: React.CSSProperties  = { flex: 1, padding: '10px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const addBtnStyle: React.CSSProperties = { padding: '9px 18px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const selectStyle: React.CSSProperties = { padding: '8px 12px', borderRadius: 8, border: '1px solid #e2e8f0', fontSize: 14 };
const labelStyle: React.CSSProperties  = { display: 'block', fontSize: 13, fontWeight: 500, marginBottom: 4, color: '#374151' };
