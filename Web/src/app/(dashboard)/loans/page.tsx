'use client';

import { useEffect, useState, FormEvent } from 'react';
import { api } from '@/lib/api';

interface Loan {
  id: string; contactName: string;
  amount: number; paidAmount: number; remainingAmount: number;
  direction: string; date: string; notes?: string;
  status: string; settledAt?: string; createdAt: string;
}

const fmt     = (n: number) => `₹${n.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`;
const fmtDate = (d: string) => new Date(d + (d.includes('T') ? '' : 'T00:00:00')).toLocaleDateString('en-IN', { day: 'numeric', month: 'short', year: 'numeric' });

function statusStyle(status: string): { bg: string; color: string } {
  if (status === 'Settled')       return { bg: '#dcfce7', color: '#166534' };
  if (status === 'PartiallyPaid') return { bg: '#dbeafe', color: '#1e40af' };
  return { bg: '#fef3c7', color: '#92400e' };
}

function directionStyle(dir: string) {
  return dir === 'Lent'
    ? { label: 'You Lent', color: '#ef4444', bg: '#fee2e2' }
    : { label: 'You Borrowed', color: '#10b981', bg: '#dcfce7' };
}

export default function LoansPage() {
  const [loans, setLoans]     = useState<Loan[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editing, setEditing]   = useState<Loan | null>(null);
  const [payingLoan, setPayingLoan] = useState<Loan | null>(null);
  const [filter, setFilter]   = useState<'all' | 'active' | 'settled'>('active');

  async function load() {
    setLoading(true);
    try {
      const qs = filter === 'all' ? '' : filter === 'active' ? '?status=1' : '?status=3';
      const data = await api.get<Loan[]>(`/api/loans${qs}`);
      setLoans(data ?? []);
    } catch { setLoans([]); } finally { setLoading(false); }
  }

  useEffect(() => { load(); }, [filter]);

  async function handleDelete(loan: Loan) {
    if (!confirm(`Delete loan with ${loan.contactName}?`)) return;
    await api.delete(`/api/loans/${loan.id}`);
    load();
  }

  const lent     = loans.filter(l => l.direction === 'Lent');
  const borrowed = loans.filter(l => l.direction === 'Borrowed');
  const totalLent     = lent.filter(l => l.status !== 'Settled').reduce((s, l) => s + l.remainingAmount, 0);
  const totalBorrowed = borrowed.filter(l => l.status !== 'Settled').reduce((s, l) => s + l.remainingAmount, 0);

  return (
    <div>
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 24 }}>
        <h1 style={{ margin: 0, fontSize: 24, fontWeight: 700 }}>Loans</h1>
        <button onClick={() => { setEditing(null); setShowForm(true); }} style={addBtnStyle}>+ Add Loan</button>
      </div>

      {/* Summary strip */}
      <div style={{ display: 'flex', gap: 12, flexWrap: 'wrap', marginBottom: 20 }}>
        <div style={{ flex: 1, minWidth: 140, background: '#fee2e2', borderRadius: 10, padding: '12px 16px' }}>
          <p style={{ margin: 0, fontSize: 12, color: '#991b1b' }}>Others owe you</p>
          <p style={{ margin: '4px 0 0', fontWeight: 700, fontSize: 18, color: '#dc2626' }}>{fmt(totalLent)}</p>
        </div>
        <div style={{ flex: 1, minWidth: 140, background: '#dcfce7', borderRadius: 10, padding: '12px 16px' }}>
          <p style={{ margin: 0, fontSize: 12, color: '#166534' }}>You owe others</p>
          <p style={{ margin: '4px 0 0', fontWeight: 700, fontSize: 18, color: '#16a34a' }}>{fmt(totalBorrowed)}</p>
        </div>
      </div>

      {/* Filter tabs */}
      <div style={{ display: 'flex', gap: 8, marginBottom: 20 }}>
        {(['active', 'all', 'settled'] as const).map(f => (
          <button key={f} onClick={() => setFilter(f)} style={{
            padding: '6px 14px', borderRadius: 20, border: 'none', cursor: 'pointer',
            background: filter === f ? '#3b82f6' : '#f1f5f9',
            color: filter === f ? '#fff' : '#374151',
            fontWeight: 600, fontSize: 13, textTransform: 'capitalize',
          }}>
            {f === 'active' ? 'Active' : f === 'settled' ? 'Settled' : 'All'}
          </button>
        ))}
      </div>

      {loading ? <p style={{ color: '#94a3b8' }}>Loading…</p> : (
        <>
          {loans.length === 0 && (
            <div style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: 40, textAlign: 'center', color: '#94a3b8' }}>
              No loans found. Track money you lend or borrow using &ldquo;Add Loan&rdquo;.
            </div>
          )}

          {lent.length > 0 && (
            <LoanSection title="You Lent" loans={lent} onEdit={l => { setEditing(l); setShowForm(true); }} onPay={setPayingLoan} onDelete={handleDelete} />
          )}
          {borrowed.length > 0 && (
            <LoanSection title="You Borrowed" loans={borrowed} onEdit={l => { setEditing(l); setShowForm(true); }} onPay={setPayingLoan} onDelete={handleDelete} />
          )}
        </>
      )}

      {showForm && (
        <LoanForm
          initial={editing}
          onClose={() => { setShowForm(false); setEditing(null); }}
          onSaved={() => { setShowForm(false); setEditing(null); load(); }}
        />
      )}

      {payingLoan && (
        <PaymentForm
          loan={payingLoan}
          onClose={() => setPayingLoan(null)}
          onSaved={() => { setPayingLoan(null); load(); }}
        />
      )}
    </div>
  );
}

function LoanSection({ title, loans, onEdit, onPay, onDelete }: {
  title: string; loans: Loan[];
  onEdit: (l: Loan) => void;
  onPay: (l: Loan) => void;
  onDelete: (l: Loan) => void;
}) {
  return (
    <div style={{ marginBottom: 28 }}>
      <p style={{ margin: '0 0 10px', fontSize: 12, fontWeight: 700, color: '#64748b', textTransform: 'uppercase', letterSpacing: 1 }}>{title}</p>
      <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
        {loans.map(loan => {
          const dir    = directionStyle(loan.direction);
          const st     = statusStyle(loan.status);
          const settled = loan.status === 'Settled';
          return (
            <div key={loan.id} style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: '14px 18px', display: 'flex', alignItems: 'center', gap: 14, borderLeft: `4px solid ${dir.color}` }}>
              <div style={{ flex: 1 }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: 8, flexWrap: 'wrap', marginBottom: 4 }}>
                  <span style={{ fontWeight: 700, fontSize: 15 }}>{loan.contactName}</span>
                  <span style={{ padding: '2px 8px', borderRadius: 10, fontSize: 11, fontWeight: 700, background: dir.bg, color: dir.color }}>{dir.label}</span>
                  <span style={{ padding: '2px 8px', borderRadius: 10, fontSize: 11, fontWeight: 700, background: st.bg, color: st.color }}>{loan.status === 'PartiallyPaid' ? 'Partial' : loan.status}</span>
                </div>
                <div style={{ fontSize: 12, color: '#64748b', display: 'flex', gap: 14, flexWrap: 'wrap' }}>
                  <span>{fmtDate(loan.date)}</span>
                  {loan.paidAmount > 0 && <span>Paid: {fmt(loan.paidAmount)}</span>}
                  {!settled && <span>Remaining: <strong>{fmt(loan.remainingAmount)}</strong></span>}
                  {settled && loan.settledAt && <span>Settled: {fmtDate(loan.settledAt)}</span>}
                  {loan.notes && <span style={{ fontStyle: 'italic' }}>{loan.notes}</span>}
                </div>
              </div>
              <div style={{ textAlign: 'right', flexShrink: 0 }}>
                <div style={{ fontWeight: 700, fontSize: 17, color: settled ? '#10b981' : dir.color }}>{fmt(loan.amount)}</div>
                <div style={{ display: 'flex', gap: 5, marginTop: 5, justifyContent: 'flex-end' }}>
                  {!settled && (
                    <button onClick={() => onPay(loan)} style={{ padding: '4px 9px', borderRadius: 6, border: 'none', background: '#10b981', color: '#fff', fontSize: 12, fontWeight: 600, cursor: 'pointer' }}>
                      💸 Pay
                    </button>
                  )}
                  <button onClick={() => onEdit(loan)} style={{ padding: '4px 7px', borderRadius: 6, border: '1px solid #e2e8f0', background: '#fff', color: '#3b82f6', fontSize: 12, cursor: 'pointer' }}>✏️</button>
                  <button onClick={() => onDelete(loan)} style={{ padding: '4px 7px', borderRadius: 6, border: '1px solid #fee2e2', background: '#fff', color: '#ef4444', fontSize: 12, cursor: 'pointer' }}>🗑️</button>
                </div>
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
}

function LoanForm({ initial, onClose, onSaved }: { initial: Loan | null; onClose: () => void; onSaved: () => void }) {
  const [contact, setContact] = useState(initial?.contactName ?? '');
  const [amount, setAmount]   = useState(initial?.amount.toString() ?? '');
  const [dir, setDir]         = useState<1 | 2>(initial?.direction === 'Borrowed' ? 2 : 1);
  const [date, setDate]       = useState(initial ? initial.date.slice(0, 10) : new Date().toISOString().slice(0, 10));
  const [notes, setNotes]     = useState(initial?.notes ?? '');
  const [loading, setLoading] = useState(false);
  const [error, setError]     = useState('');

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    if (!contact.trim()) { setError('Enter a contact name'); return; }
    if (!amount || +amount <= 0) { setError('Enter a positive amount'); return; }
    setLoading(true); setError('');
    try {
      const payload = { contactName: contact.trim(), amount: +amount, direction: dir, date: new Date(date + 'T00:00:00').toISOString(), notes: notes.trim() || null };
      if (initial) await api.put(`/api/loans/${initial.id}`, payload);
      else         await api.post('/api/loans', payload);
      onSaved();
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'Failed to save');
    } finally { setLoading(false); }
  }

  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', zIndex: 1000, display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '0 16px' }}>
      <div style={{ background: '#fff', borderRadius: 16, padding: 28, width: '100%', maxWidth: 420, boxShadow: '0 8px 40px rgba(0,0,0,0.15)' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 20 }}>
          <h2 style={{ margin: 0, fontSize: 18, fontWeight: 700 }}>{initial ? 'Edit Loan' : 'Add Loan'}</h2>
          <button onClick={onClose} style={{ border: 'none', background: 'none', cursor: 'pointer', fontSize: 20, color: '#94a3b8' }}>×</button>
        </div>
        <form onSubmit={handleSubmit}>
          <div style={{ marginBottom: 14 }}>
            <label style={labelStyle}>Direction</label>
            <div style={{ display: 'flex', gap: 8 }}>
              <button type="button" onClick={() => setDir(1)} style={{ flex: 1, padding: '9px 0', borderRadius: 8, border: `2px solid ${dir === 1 ? '#ef4444' : '#e2e8f0'}`, background: dir === 1 ? '#fee2e2' : '#fff', color: dir === 1 ? '#dc2626' : '#64748b', fontWeight: 600, fontSize: 14, cursor: 'pointer' }}>
                I Lent
              </button>
              <button type="button" onClick={() => setDir(2)} style={{ flex: 1, padding: '9px 0', borderRadius: 8, border: `2px solid ${dir === 2 ? '#10b981' : '#e2e8f0'}`, background: dir === 2 ? '#dcfce7' : '#fff', color: dir === 2 ? '#166534' : '#64748b', fontWeight: 600, fontSize: 14, cursor: 'pointer' }}>
                I Borrowed
              </button>
            </div>
          </div>
          <div style={{ marginBottom: 14 }}>
            <label style={labelStyle}>Contact Name</label>
            <input style={fieldInput} value={contact} onChange={e => setContact(e.target.value)} placeholder="e.g. Rahul, Mom, Office" required />
          </div>
          <div style={{ marginBottom: 14 }}>
            <label style={labelStyle}>Amount (₹)</label>
            <input style={fieldInput} type="number" min="0.01" step="0.01" value={amount} onChange={e => setAmount(e.target.value)} placeholder="0.00" />
          </div>
          <div style={{ marginBottom: 14 }}>
            <label style={labelStyle}>Date</label>
            <input style={fieldInput} type="date" value={date} onChange={e => setDate(e.target.value)} />
          </div>
          <div style={{ marginBottom: 14 }}>
            <label style={labelStyle}>Notes (optional)</label>
            <input style={fieldInput} value={notes} onChange={e => setNotes(e.target.value)} placeholder="e.g. For rent, Medical emergency…" />
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

function PaymentForm({ loan, onClose, onSaved }: { loan: Loan; onClose: () => void; onSaved: () => void }) {
  const [amount, setAmount]   = useState(loan.remainingAmount.toString());
  const [loading, setLoading] = useState(false);
  const [error, setError]     = useState('');

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    if (!amount || +amount <= 0) { setError('Enter a positive amount'); return; }
    setLoading(true); setError('');
    try {
      await api.post(`/api/loans/${loan.id}/pay`, { paymentAmount: +amount });
      onSaved();
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'Failed to record payment');
    } finally { setLoading(false); }
  }

  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', zIndex: 1000, display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '0 16px' }}>
      <div style={{ background: '#fff', borderRadius: 16, padding: 28, width: '100%', maxWidth: 360, boxShadow: '0 8px 40px rgba(0,0,0,0.15)' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 16 }}>
          <h2 style={{ margin: 0, fontSize: 18, fontWeight: 700 }}>Record Payment</h2>
          <button onClick={onClose} style={{ border: 'none', background: 'none', cursor: 'pointer', fontSize: 20, color: '#94a3b8' }}>×</button>
        </div>
        <p style={{ margin: '0 0 16px', fontSize: 13, color: '#64748b' }}>
          {loan.contactName} — remaining {fmt(loan.remainingAmount)}
        </p>
        <form onSubmit={handleSubmit}>
          <div style={{ marginBottom: 14 }}>
            <label style={labelStyle}>Payment Amount (₹)</label>
            <input style={fieldInput} type="number" min="0.01" step="0.01" value={amount} onChange={e => setAmount(e.target.value)} />
          </div>
          {error && <p style={{ color: '#ef4444', fontSize: 13, marginBottom: 12 }}>{error}</p>}
          <div style={{ display: 'flex', gap: 8 }}>
            <button type="button" onClick={onClose} style={{ ...submitBtn, background: '#f1f5f9', color: '#374151' }}>Cancel</button>
            <button type="submit" disabled={loading} style={submitBtn}>{loading ? 'Saving…' : 'Record'}</button>
          </div>
        </form>
      </div>
    </div>
  );
}

const fieldInput: React.CSSProperties   = { width: '100%', padding: '9px 12px', borderRadius: 8, border: '1px solid #e2e8f0', fontSize: 14, boxSizing: 'border-box', outline: 'none' };
const submitBtn: React.CSSProperties    = { flex: 1, padding: '10px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const addBtnStyle: React.CSSProperties = { padding: '9px 18px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const labelStyle: React.CSSProperties  = { display: 'block', fontSize: 13, fontWeight: 500, marginBottom: 4, color: '#374151' };
