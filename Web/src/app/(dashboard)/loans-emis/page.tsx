'use client';

import { useEffect, useState, FormEvent } from 'react';
import { api } from '@/lib/api';

/* ── Types ─────────────────────────────────────────────────────────── */
interface Emi {
  id: string; loanName: string; bankName: string; totalAmount: number;
  emiAmount: number; totalEmis: number; paidEmis: number; interestRate: number;
  startDate: string; nextDueDate: string; status: string; description?: string;
  remainingAmount?: number;
}

interface Loan {
  id: string; contactName: string; amount: number;
  paidAmount: number; remainingAmount: number;
  direction: string; date: string; notes?: string;
  status: string; settledAt?: string; createdAt: string;
}

/* ── Helpers ────────────────────────────────────────────────────────── */
const fmt     = (n: number) => `₹${n.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`;
const fmtDate = (d: string) => new Date(d + (d.includes('T') ? '' : 'T00:00:00')).toLocaleDateString('en-IN', { day: 'numeric', month: 'short', year: 'numeric' });

function directionStyle(dir: string) {
  return dir === 'Lent'
    ? { label: 'You Lent', color: '#ef4444', bg: '#fee2e2' }
    : { label: 'You Borrowed', color: '#10b981', bg: '#dcfce7' };
}
function loanStatusStyle(status: string) {
  if (status === 'Settled')       return { bg: '#dcfce7', color: '#166534' };
  if (status === 'PartiallyPaid') return { bg: '#dbeafe', color: '#1e40af' };
  return { bg: '#fef3c7', color: '#92400e' };
}

/* ══════════════════════════════════════════════════════════════════════
   MAIN PAGE
   ═════════════════════════════════════════════════════════════════════ */
export default function LoansEmisPage() {
  const [tab, setTab] = useState<'emis' | 'loans'>('emis');

  return (
    <div>
      <h1 style={{ margin: '0 0 20px', fontSize: 24, fontWeight: 700 }}>Loans & EMIs</h1>

      <div style={{ display: 'flex', gap: 8, marginBottom: 28, borderBottom: '2px solid #f1f5f9', paddingBottom: 0 }}>
        {([['emis', '🏦 Bank EMIs'], ['loans', '🤝 Personal Loans']] as const).map(([t, label]) => (
          <button key={t} onClick={() => setTab(t)} style={{
            padding: '10px 20px', border: 'none', cursor: 'pointer',
            background: 'none', fontWeight: 600, fontSize: 14,
            color: tab === t ? '#3b82f6' : '#64748b',
            borderBottom: tab === t ? '2px solid #3b82f6' : '2px solid transparent',
            marginBottom: -2,
          }}>{label}</button>
        ))}
      </div>

      {tab === 'emis' ? <EmisSection /> : <LoansSection />}
    </div>
  );
}

/* ══════════════════════════════════════════════════════════════════════
   BANK EMIS SECTION
   ═════════════════════════════════════════════════════════════════════ */
function EmisSection() {
  const [items, setItems]   = useState<Emi[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editing, setEditing]   = useState<Emi | null>(null);
  const [filter, setFilter]     = useState('Active');

  async function load() {
    setLoading(true);
    try {
      const data = await api.get<Emi[]>(`/api/emis?status=${filter}&type=BankEmi`);
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

  return (
    <div>
      <div style={{ display: 'flex', gap: 12, marginBottom: 20, alignItems: 'center', flexWrap: 'wrap' }}>
        {['Active', 'Closed', 'Paused'].map(s => (
          <button key={s} onClick={() => setFilter(s)} style={{
            padding: '7px 16px', borderRadius: 20, border: 'none', cursor: 'pointer', fontSize: 13, fontWeight: 600,
            background: filter === s ? '#3b82f6' : '#f1f5f9', color: filter === s ? '#fff' : '#64748b',
          }}>{s}</button>
        ))}
        <button onClick={() => { setEditing(null); setShowForm(true); }} style={{ ...addBtnStyle, marginLeft: 'auto' }}>+ Add EMI</button>
        {filter === 'Active' && totalMonthly > 0 && (
          <div style={{ fontWeight: 600, color: '#ef4444', fontSize: 15 }}>Monthly: {fmt(totalMonthly)}</div>
        )}
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
                  <StatCell label="Total" value={fmt(e.totalAmount)} />
                  <StatCell label="Progress" value={`${e.paidEmis}/${e.totalEmis} EMIs`} />
                  <StatCell label="Next Due" value={new Date(e.nextDueDate).toLocaleDateString()} />
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

function EmiForm({ initial, onClose, onSaved }: { initial: Emi | null; onClose: () => void; onSaved: () => void }) {
  const [f, setF] = useState({
    loanName:    initial?.loanName ?? '',
    bankName:    initial?.bankName ?? '',
    totalAmount: initial?.totalAmount.toString() ?? '',
    emiAmount:   initial?.emiAmount.toString() ?? '',
    totalEmis:   initial?.totalEmis.toString() ?? '',
    paidEmis:    initial?.paidEmis.toString() ?? '0',
    interestRate: initial?.interestRate.toString() ?? '',
    startDate:   initial ? initial.startDate.slice(0, 10) : new Date().toISOString().slice(0, 10),
    nextDueDate: initial ? initial.nextDueDate.slice(0, 10) : new Date().toISOString().slice(0, 10),
    status:      initial?.status ?? 'Active',
    description: initial?.description ?? '',
  });
  const [loading, setLoading] = useState(false);
  const set = (k: string) => (e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>) => setF(p => ({ ...p, [k]: e.target.value }));

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setLoading(true);
    try {
      const payload = {
        ...f, type: 1,
        totalAmount: parseFloat(f.totalAmount), emiAmount: parseFloat(f.emiAmount),
        totalEmis: parseInt(f.totalEmis), paidEmis: parseInt(f.paidEmis),
        interestRate: parseFloat(f.interestRate),
        startDate: new Date(f.startDate).toISOString(), nextDueDate: new Date(f.nextDueDate).toISOString(),
      };
      if (initial) await api.put(`/api/emis/${initial.id}`, payload);
      else         await api.post('/api/emis', payload);
      onSaved();
    } catch (err: unknown) { alert(err instanceof Error ? err.message : 'Failed'); }
    finally { setLoading(false); }
  }

  return (
    <Modal title={initial ? 'Edit Bank EMI' : 'Add Bank EMI'} onClose={onClose}>
      <form onSubmit={handleSubmit}>
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 12 }}>
          {([
            { label: 'Loan Name', key: 'loanName', type: 'text' },
            { label: 'Bank Name', key: 'bankName', type: 'text' },
            { label: 'Total Amount', key: 'totalAmount', type: 'number' },
            { label: 'EMI Amount/mo', key: 'emiAmount', type: 'number' },
            { label: 'Total EMIs', key: 'totalEmis', type: 'number' },
            { label: 'Paid EMIs', key: 'paidEmis', type: 'number' },
            { label: 'Interest Rate %', key: 'interestRate', type: 'number' },
          ] as const).map(({ label, key, type }) => (
            <div key={key}>
              <label style={labelStyle}>{label}</label>
              <input style={fieldInput} type={type} step="any" value={(f as Record<string,string>)[key]} onChange={set(key)} required />
            </div>
          ))}
          <div>
            <label style={labelStyle}>Status</label>
            <select style={fieldInput} value={f.status} onChange={set('status')}>
              {['Active', 'Paused', 'Closed'].map(s => <option key={s}>{s}</option>)}
            </select>
          </div>
          <div>
            <label style={labelStyle}>Start Date</label>
            <input style={fieldInput} type="date" value={f.startDate} onChange={set('startDate')} required />
          </div>
          <div>
            <label style={labelStyle}>Next Due Date</label>
            <input style={fieldInput} type="date" value={f.nextDueDate} onChange={set('nextDueDate')} required />
          </div>
        </div>
        <div style={{ marginTop: 12 }}>
          <label style={labelStyle}>Description</label>
          <input style={fieldInput} value={f.description} onChange={set('description')} placeholder="Optional" />
        </div>
        <div style={{ display: 'flex', gap: 8, marginTop: 20 }}>
          <button type="button" onClick={onClose} style={{ ...submitBtn, background: '#f1f5f9', color: '#374151' }}>Cancel</button>
          <button type="submit" disabled={loading} style={submitBtn}>{loading ? 'Saving…' : 'Save'}</button>
        </div>
      </form>
    </Modal>
  );
}

/* ══════════════════════════════════════════════════════════════════════
   PERSONAL LOANS SECTION
   ═════════════════════════════════════════════════════════════════════ */
function LoansSection() {
  const [loans, setLoans]     = useState<Loan[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editing, setEditing]   = useState<Loan | null>(null);
  const [payingLoan, setPayingLoan] = useState<Loan | null>(null);
  const [filter, setFilter]   = useState<'active' | 'all' | 'settled'>('active');

  async function load() {
    setLoading(true);
    try {
      const qs = filter === 'all' ? '' : filter === 'active' ? '?status=1' : '?status=3';
      setLoans((await api.get<Loan[]>(`/api/loans${qs}`)) ?? []);
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

      <div style={{ display: 'flex', gap: 8, marginBottom: 20, alignItems: 'center', flexWrap: 'wrap' }}>
        {(['active', 'all', 'settled'] as const).map(f => (
          <button key={f} onClick={() => setFilter(f)} style={{
            padding: '7px 16px', borderRadius: 20, border: 'none', cursor: 'pointer',
            background: filter === f ? '#3b82f6' : '#f1f5f9',
            color: filter === f ? '#fff' : '#374151', fontWeight: 600, fontSize: 13, textTransform: 'capitalize',
          }}>{f === 'active' ? 'Active' : f === 'settled' ? 'Settled' : 'All'}</button>
        ))}
        <button onClick={() => { setEditing(null); setShowForm(true); }} style={{ ...addBtnStyle, marginLeft: 'auto' }}>+ Add Loan</button>
      </div>

      {loading ? <p style={{ color: '#94a3b8' }}>Loading…</p> : (
        <>
          {loans.length === 0 && (
            <div style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: 40, textAlign: 'center', color: '#94a3b8' }}>
              No loans found. Track money you lend or borrow using &ldquo;Add Loan&rdquo;.
            </div>
          )}
          {lent.length > 0 && (
            <LoanSection title="You Lent" loans={lent}
              onEdit={l => { setEditing(l); setShowForm(true); }}
              onPay={setPayingLoan} onDelete={handleDelete} />
          )}
          {borrowed.length > 0 && (
            <LoanSection title="You Borrowed" loans={borrowed}
              onEdit={l => { setEditing(l); setShowForm(true); }}
              onPay={setPayingLoan} onDelete={handleDelete} />
          )}
        </>
      )}

      {showForm && (
        <LoanForm initial={editing}
          onClose={() => { setShowForm(false); setEditing(null); }}
          onSaved={() => { setShowForm(false); setEditing(null); load(); }} />
      )}
      {payingLoan && (
        <PaymentForm loan={payingLoan}
          onClose={() => setPayingLoan(null)}
          onSaved={() => { setPayingLoan(null); load(); }} />
      )}
    </div>
  );
}

function LoanSection({ title, loans, onEdit, onPay, onDelete }: {
  title: string; loans: Loan[];
  onEdit: (l: Loan) => void; onPay: (l: Loan) => void; onDelete: (l: Loan) => void;
}) {
  return (
    <div style={{ marginBottom: 28 }}>
      <p style={{ margin: '0 0 10px', fontSize: 12, fontWeight: 700, color: '#64748b', textTransform: 'uppercase', letterSpacing: 1 }}>{title}</p>
      <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
        {loans.map(loan => {
          const dir = directionStyle(loan.direction);
          const st  = loanStatusStyle(loan.status);
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
    } catch (err: unknown) { setError(err instanceof Error ? err.message : 'Failed'); }
    finally { setLoading(false); }
  }

  return (
    <Modal title={initial ? 'Edit Loan' : 'Add Loan'} onClose={onClose}>
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
    </Modal>
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
    } catch (err: unknown) { setError(err instanceof Error ? err.message : 'Failed to record payment'); }
    finally { setLoading(false); }
  }

  return (
    <Modal title="Record Payment" onClose={onClose}>
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
    </Modal>
  );
}

/* ── Shared components ──────────────────────────────────────────────── */
function StatCell({ label, value }: { label: string; value: string }) {
  return (
    <div>
      <div style={{ fontSize: 11, color: '#94a3b8', marginBottom: 2 }}>{label}</div>
      <div style={{ fontWeight: 600, fontSize: 13 }}>{value}</div>
    </div>
  );
}

function Modal({ title, onClose, children }: { title: string; onClose: () => void; children: React.ReactNode }) {
  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', zIndex: 1000, display: 'flex', alignItems: 'center', justifyContent: 'center', overflow: 'auto', padding: 24 }}>
      <div style={{ background: '#fff', borderRadius: 16, padding: 28, width: '100%', maxWidth: 480, maxHeight: '90vh', overflowY: 'auto', boxShadow: '0 8px 40px rgba(0,0,0,0.15)' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 20 }}>
          <h2 style={{ margin: 0, fontSize: 18, fontWeight: 700 }}>{title}</h2>
          <button onClick={onClose} style={{ border: 'none', background: 'none', cursor: 'pointer', fontSize: 20, color: '#94a3b8' }}>×</button>
        </div>
        {children}
      </div>
    </div>
  );
}

/* ── Styles ─────────────────────────────────────────────────────────── */
const fieldInput: React.CSSProperties  = { width: '100%', padding: '8px 10px', borderRadius: 8, border: '1px solid #e2e8f0', fontSize: 13, boxSizing: 'border-box', outline: 'none' };
const submitBtn: React.CSSProperties   = { flex: 1, padding: '10px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const addBtnStyle: React.CSSProperties = { padding: '9px 18px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const labelStyle: React.CSSProperties  = { display: 'block', fontSize: 12, fontWeight: 500, marginBottom: 4, color: '#374151' };
const iconBtn = (color: string): React.CSSProperties => ({ border: 'none', background: 'none', cursor: 'pointer', fontSize: 13, color, fontWeight: 600 });
