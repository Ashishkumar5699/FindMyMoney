'use client';

import { useEffect, useState, FormEvent } from 'react';
import { api } from '@/lib/api';

interface Contact { id: string; name: string; notes?: string; balance: number; createdAt: string; }
interface Transaction { id: string; contactId: string; amount: number; type: string; notes?: string; date: string; createdAt: string; }

const fmt = (n: number) => `₹${Math.abs(n).toLocaleString('en-IN', { minimumFractionDigits: 0, maximumFractionDigits: 0 })}`;
const fmtDate = (d: string) => new Date(d.includes('T') ? d : d + 'T00:00:00').toLocaleDateString('en-IN', { day: '2-digit', month: 'short', year: 'numeric' });

export default function KhataPage() {
  const [contacts, setContacts] = useState<Contact[]>([]);
  const [loading, setLoading] = useState(true);
  const [selected, setSelected] = useState<Contact | null>(null);
  const [showAdd, setShowAdd] = useState(false);

  async function load() {
    setLoading(true);
    try { setContacts((await api.get<Contact[]>('/api/khata')) ?? []); }
    catch { setContacts([]); } finally { setLoading(false); }
  }

  useEffect(() => { load(); }, []);

  async function handleDelete(id: string, name: string) {
    if (!confirm(`Delete "${name}" and all their transactions?`)) return;
    await api.delete(`/api/khata/${id}`);
    setSelected(null);
    load();
  }

  async function handleSettle(contact: Contact) {
    if (!confirm(`Mark all dues settled with ${contact.name}? Balance will become ₹0.`)) return;
    await api.post(`/api/khata/${contact.id}/settle`, {});
    load();
    setSelected(null);
  }

  const totalOwedToYou = contacts.filter(c => c.balance > 0).reduce((s, c) => s + c.balance, 0);
  const totalYouOwe    = contacts.filter(c => c.balance < 0).reduce((s, c) => s + Math.abs(c.balance), 0);

  return (
    <div>
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 20 }}>
        <h1 style={{ margin: 0, fontSize: 24, fontWeight: 700 }}>Khata</h1>
        <button onClick={() => setShowAdd(true)} style={addBtn}>+ Add Person</button>
      </div>

      {/* Summary strip */}
      <div style={{ display: 'flex', gap: 12, marginBottom: 24 }}>
        <div style={{ flex: 1, background: '#f0fdf4', border: '1px solid #86efac', borderRadius: 12, padding: '14px 18px' }}>
          <p style={{ margin: 0, fontSize: 11, color: '#16a34a', fontWeight: 700, textTransform: 'uppercase', letterSpacing: 1 }}>Others owe you</p>
          <p style={{ margin: '4px 0 0', fontSize: 20, fontWeight: 800, color: '#15803d' }}>{fmt(totalOwedToYou)}</p>
        </div>
        <div style={{ flex: 1, background: '#fef2f2', border: '1px solid #fca5a5', borderRadius: 12, padding: '14px 18px' }}>
          <p style={{ margin: 0, fontSize: 11, color: '#dc2626', fontWeight: 700, textTransform: 'uppercase', letterSpacing: 1 }}>You owe others</p>
          <p style={{ margin: '4px 0 0', fontSize: 20, fontWeight: 800, color: '#b91c1c' }}>{fmt(totalYouOwe)}</p>
        </div>
      </div>

      {loading ? <p style={{ color: '#94a3b8' }}>Loading…</p> : contacts.length === 0 ? (
        <div style={{ background: '#fff', borderRadius: 12, padding: 40, textAlign: 'center', color: '#94a3b8', boxShadow: '0 1px 6px rgba(0,0,0,0.05)' }}>
          No entries yet. Add a person to start tracking.
        </div>
      ) : (
        <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
          {contacts.map(c => (
            <div key={c.id} onClick={() => setSelected(c)} style={{ background: '#fff', borderRadius: 12, padding: '14px 18px', boxShadow: '0 1px 6px rgba(0,0,0,0.05)', cursor: 'pointer', display: 'flex', alignItems: 'center', gap: 14, border: '1px solid #f1f5f9' }}>
              <div style={{ width: 40, height: 40, borderRadius: 20, background: c.balance >= 0 ? '#dcfce7' : '#fee2e2', display: 'flex', alignItems: 'center', justifyContent: 'center', fontWeight: 700, fontSize: 16, color: c.balance >= 0 ? '#16a34a' : '#dc2626', flexShrink: 0 }}>
                {c.name.charAt(0).toUpperCase()}
              </div>
              <div style={{ flex: 1 }}>
                <p style={{ margin: 0, fontWeight: 700, fontSize: 15 }}>{c.name}</p>
                {c.notes && <p style={{ margin: '2px 0 0', fontSize: 12, color: '#94a3b8' }}>{c.notes}</p>}
              </div>
              <div style={{ textAlign: 'right' }}>
                <p style={{ margin: 0, fontWeight: 800, fontSize: 15, color: c.balance > 0 ? '#16a34a' : c.balance < 0 ? '#dc2626' : '#94a3b8' }}>
                  {c.balance > 0 ? '+' : ''}{fmt(c.balance)}
                </p>
                <p style={{ margin: '2px 0 0', fontSize: 11, color: '#94a3b8' }}>
                  {c.balance > 0 ? 'owes you' : c.balance < 0 ? 'you owe' : 'settled'}
                </p>
              </div>
            </div>
          ))}
        </div>
      )}

      {showAdd && (
        <AddContactForm onClose={() => setShowAdd(false)} onSaved={() => { setShowAdd(false); load(); }} />
      )}

      {selected && (
        <ContactDetail
          contact={selected}
          onClose={() => { setSelected(null); load(); }}
          onDelete={() => handleDelete(selected.id, selected.name)}
          onSettle={() => handleSettle(selected)}
        />
      )}
    </div>
  );
}

function AddContactForm({ onClose, onSaved }: { onClose: () => void; onSaved: () => void }) {
  const [name, setName] = useState('');
  const [notes, setNotes] = useState('');
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setLoading(true);
    try {
      await api.post('/api/khata', { name, notes: notes || undefined });
      onSaved();
    } catch (err) { alert(err instanceof Error ? err.message : 'Failed'); }
    finally { setLoading(false); }
  }

  return (
    <Modal title="Add Person" onClose={onClose}>
      <form onSubmit={handleSubmit}>
        <Field label="Name">
          <input style={inp} value={name} onChange={e => setName(e.target.value)} placeholder="e.g. Rahul, Mom" required />
        </Field>
        <Field label="Notes (optional)">
          <input style={inp} value={notes} onChange={e => setNotes(e.target.value)} placeholder="e.g. Colleague, Flatmate" />
        </Field>
        <div style={{ display: 'flex', gap: 8, marginTop: 18 }}>
          <button type="button" onClick={onClose} style={{ ...submitBtn, background: '#f1f5f9', color: '#374151' }}>Cancel</button>
          <button type="submit" disabled={loading} style={submitBtn}>{loading ? 'Adding…' : 'Add'}</button>
        </div>
      </form>
    </Modal>
  );
}

function ContactDetail({ contact, onClose, onDelete, onSettle }: {
  contact: Contact; onClose: () => void; onDelete: () => void; onSettle: () => void;
}) {
  const [txns, setTxns] = useState<Transaction[]>([]);
  const [loadingTxns, setLoadingTxns] = useState(true);
  const [showAddTxn, setShowAddTxn] = useState(false);
  const [currentContact, setCurrentContact] = useState(contact);

  async function loadTxns() {
    setLoadingTxns(true);
    try { setTxns((await api.get<Transaction[]>(`/api/khata/${contact.id}/transactions`)) ?? []); }
    catch { setTxns([]); } finally { setLoadingTxns(false); }
  }

  async function refreshContact() {
    const contacts = await api.get<Contact[]>('/api/khata');
    const updated = (contacts ?? []).find(c => c.id === contact.id);
    if (updated) setCurrentContact(updated);
  }

  useEffect(() => { loadTxns(); }, []);

  async function deleteTxn(id: string) {
    if (!confirm('Delete this transaction? The balance will be reversed.')) return;
    await api.delete(`/api/khata/${contact.id}/transactions/${id}`);
    await Promise.all([loadTxns(), refreshContact()]);
  }

  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', zIndex: 1000, display: 'flex', alignItems: 'flex-end', justifyContent: 'center' }}>
      <div style={{ background: '#fff', borderRadius: '20px 20px 0 0', width: '100%', maxWidth: 520, maxHeight: '85vh', display: 'flex', flexDirection: 'column', boxShadow: '0 -4px 30px rgba(0,0,0,0.15)' }}>
        {/* Header */}
        <div style={{ padding: '20px 20px 16px', borderBottom: '1px solid #f1f5f9' }}>
          <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
            <div>
              <h2 style={{ margin: 0, fontSize: 18, fontWeight: 700 }}>{currentContact.name}</h2>
              {currentContact.notes && <p style={{ margin: '2px 0 0', fontSize: 12, color: '#94a3b8' }}>{currentContact.notes}</p>}
            </div>
            <button onClick={onClose} style={{ border: 'none', background: 'none', cursor: 'pointer', fontSize: 22, color: '#94a3b8' }}>×</button>
          </div>
          {/* Balance */}
          <div style={{ marginTop: 12, textAlign: 'center', padding: '12px', background: currentContact.balance > 0 ? '#f0fdf4' : currentContact.balance < 0 ? '#fef2f2' : '#f8fafc', borderRadius: 10 }}>
            <p style={{ margin: 0, fontSize: 11, color: '#64748b', fontWeight: 600, textTransform: 'uppercase', letterSpacing: 1 }}>
              {currentContact.balance > 0 ? 'Owes you' : currentContact.balance < 0 ? 'You owe' : 'All settled'}
            </p>
            <p style={{ margin: '4px 0 0', fontSize: 24, fontWeight: 800, color: currentContact.balance > 0 ? '#16a34a' : currentContact.balance < 0 ? '#dc2626' : '#94a3b8' }}>
              {fmt(currentContact.balance)}
            </p>
          </div>
          {/* Actions */}
          <div style={{ display: 'flex', gap: 8, marginTop: 12 }}>
            <button onClick={() => setShowAddTxn(true)} style={{ flex: 1, padding: '9px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 13, cursor: 'pointer' }}>+ Add Entry</button>
            {currentContact.balance !== 0 && (
              <button onClick={onSettle} style={{ flex: 1, padding: '9px', borderRadius: 8, border: '1px solid #10b981', background: '#f0fdf4', color: '#059669', fontWeight: 600, fontSize: 13, cursor: 'pointer' }}>✓ Settle</button>
            )}
            <button onClick={onDelete} style={{ padding: '9px 14px', borderRadius: 8, border: '1px solid #fca5a5', background: '#fef2f2', color: '#dc2626', fontWeight: 600, fontSize: 13, cursor: 'pointer' }}>🗑️</button>
          </div>
        </div>

        {/* Transactions */}
        <div style={{ overflowY: 'auto', padding: '12px 20px 24px', flex: 1 }}>
          {loadingTxns ? <p style={{ color: '#94a3b8', textAlign: 'center' }}>Loading…</p>
            : txns.length === 0 ? <p style={{ color: '#94a3b8', textAlign: 'center', marginTop: 24 }}>No entries yet</p>
            : txns.map(t => (
              <div key={t.id} style={{ display: 'flex', alignItems: 'center', gap: 12, padding: '10px 0', borderBottom: '1px solid #f8fafc' }}>
                <div style={{ width: 36, height: 36, borderRadius: 18, background: t.type === 'Gave' ? '#dbeafe' : '#dcfce7', display: 'flex', alignItems: 'center', justifyContent: 'center', fontSize: 14, flexShrink: 0 }}>
                  {t.type === 'Gave' ? '↑' : '↓'}
                </div>
                <div style={{ flex: 1 }}>
                  <p style={{ margin: 0, fontSize: 13, fontWeight: 600, color: t.type === 'Gave' ? '#2563eb' : '#16a34a' }}>
                    {t.type === 'Gave' ? 'You gave' : 'You received'}
                  </p>
                  {t.notes && <p style={{ margin: '1px 0 0', fontSize: 11, color: '#94a3b8' }}>{t.notes}</p>}
                  <p style={{ margin: '1px 0 0', fontSize: 11, color: '#94a3b8' }}>{fmtDate(t.date)}</p>
                </div>
                <div style={{ textAlign: 'right' }}>
                  <p style={{ margin: 0, fontWeight: 700, fontSize: 14, color: t.type === 'Gave' ? '#2563eb' : '#16a34a' }}>{fmt(t.amount)}</p>
                </div>
                <button onClick={() => deleteTxn(t.id)} style={{ border: 'none', background: 'none', cursor: 'pointer', color: '#cbd5e1', fontSize: 14 }}>🗑️</button>
              </div>
            ))
          }
        </div>
      </div>

      {showAddTxn && (
        <AddTransactionForm
          contactId={contact.id}
          onClose={() => setShowAddTxn(false)}
          onSaved={async () => { setShowAddTxn(false); await Promise.all([loadTxns(), refreshContact()]); }}
        />
      )}
    </div>
  );
}

function AddTransactionForm({ contactId, onClose, onSaved }: { contactId: string; onClose: () => void; onSaved: () => void }) {
  const [type, setType] = useState<1 | 2>(1); // 1=Gave, 2=Received
  const [amount, setAmount] = useState('');
  const [notes, setNotes] = useState('');
  const [date, setDate] = useState(new Date().toISOString().slice(0, 10));
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setLoading(true);
    try {
      await api.post(`/api/khata/${contactId}/transactions`, {
        amount: parseFloat(amount),
        type,
        date: new Date(date + 'T00:00:00').toISOString(),
        notes: notes || undefined,
      });
      onSaved();
    } catch (err) { alert(err instanceof Error ? err.message : 'Failed'); }
    finally { setLoading(false); }
  }

  return (
    <Modal title="Add Entry" onClose={onClose}>
      <form onSubmit={handleSubmit}>
        <div style={{ display: 'flex', gap: 8, marginBottom: 16 }}>
          {([{ v: 1, label: '↑ I Gave' }, { v: 2, label: '↓ I Received' }] as const).map(o => (
            <button key={o.v} type="button" onClick={() => setType(o.v as 1 | 2)} style={{ flex: 1, padding: '10px', borderRadius: 8, border: `2px solid ${type === o.v ? (o.v === 1 ? '#3b82f6' : '#10b981') : '#e2e8f0'}`, background: type === o.v ? (o.v === 1 ? '#eff6ff' : '#f0fdf4') : '#fff', color: type === o.v ? (o.v === 1 ? '#2563eb' : '#059669') : '#64748b', fontWeight: 700, cursor: 'pointer' }}>
              {o.label}
            </button>
          ))}
        </div>
        <Field label="Amount (₹)">
          <input style={inp} type="number" step="0.01" min="0.01" value={amount} onChange={e => setAmount(e.target.value)} placeholder="0.00" required />
        </Field>
        <Field label="Date">
          <input style={inp} type="date" value={date} onChange={e => setDate(e.target.value)} required />
        </Field>
        <Field label="Notes (optional)">
          <input style={inp} value={notes} onChange={e => setNotes(e.target.value)} placeholder="e.g. For lunch, Rent split" />
        </Field>
        <div style={{ display: 'flex', gap: 8, marginTop: 18 }}>
          <button type="button" onClick={onClose} style={{ ...submitBtn, background: '#f1f5f9', color: '#374151' }}>Cancel</button>
          <button type="submit" disabled={loading} style={{ ...submitBtn, background: type === 1 ? '#3b82f6' : '#10b981' }}>{loading ? 'Saving…' : 'Save'}</button>
        </div>
      </form>
    </Modal>
  );
}

function Modal({ title, onClose, children }: { title: string; onClose: () => void; children: React.ReactNode }) {
  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.5)', zIndex: 2000, display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '0 16px' }}>
      <div style={{ background: '#fff', borderRadius: 16, padding: 24, width: '100%', maxWidth: 420, maxHeight: '90vh', overflowY: 'auto', boxShadow: '0 8px 40px rgba(0,0,0,0.2)' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 18 }}>
          <h2 style={{ margin: 0, fontSize: 17, fontWeight: 700 }}>{title}</h2>
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
      {label && <label style={{ display: 'block', fontSize: 13, fontWeight: 500, marginBottom: 4, color: '#374151' }}>{label}</label>}
      {children}
    </div>
  );
}

const inp: React.CSSProperties = { width: '100%', padding: '9px 12px', borderRadius: 8, border: '1px solid #e2e8f0', fontSize: 14, boxSizing: 'border-box' };
const submitBtn: React.CSSProperties = { flex: 1, padding: '10px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const addBtn: React.CSSProperties = { padding: '9px 18px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
