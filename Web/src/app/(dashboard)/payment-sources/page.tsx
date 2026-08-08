'use client';

import { useEffect, useState, FormEvent } from 'react';
import { api } from '@/lib/api';

interface PaymentSource {
  id: string; name: string; type: string;
  accountLast4?: string; bankName?: string;
  creditLimit?: number; billingCycleDay?: number;
  dueDaysAfterBilling?: number; balance: number; isActive: boolean;
}

const TYPES = [
  { value: 1, label: 'Bank Account' },
  { value: 2, label: 'Credit Card' },
  { value: 3, label: 'Cash' },
  { value: 4, label: 'UPI' },
  { value: 5, label: 'Wallet' },
];

const TYPE_BADGE: Record<string, { bg: string; color: string }> = {
  Bank:       { bg: '#dbeafe', color: '#1e40af' },
  CreditCard: { bg: '#fce7f3', color: '#9d174d' },
  Cash:       { bg: '#dcfce7', color: '#166534' },
  UPI:        { bg: '#ede9fe', color: '#5b21b6' },
  Wallet:     { bg: '#fef3c7', color: '#92400e' },
};

const fmt = (n: number) => `₹${n.toLocaleString('en-IN', { minimumFractionDigits: 0 })}`;

export default function PaymentSourcesPage() {
  const [items, setItems] = useState<PaymentSource[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editing, setEditing] = useState<PaymentSource | null>(null);

  async function load() {
    setLoading(true);
    try {
      const data = await api.get<PaymentSource[]>('/api/payment-sources');
      setItems(data ?? []);
    } catch { setItems([]); } finally { setLoading(false); }
  }

  useEffect(() => { load(); }, []);

  async function handleDelete(id: string, name: string) {
    if (!confirm(`Delete "${name}"? Expenses linked to it will lose the source link.`)) return;
    await api.delete(`/api/payment-sources/${id}`);
    load();
  }

  async function handleToggleActive(id: string, current: boolean) {
    const action = current ? 'close' : 'reopen';
    if (!confirm(`${current ? 'Close' : 'Reopen'} this card? You can ${action === 'close' ? 'reopen' : 'close'} it again any time.`)) return;
    await api.patch(`/api/payment-sources/${id}/status`, { isActive: !current });
    load();
  }

  const active   = items.filter(s => s.isActive);
  const inactive = items.filter(s => !s.isActive);

  // Group active sources by type in display order
  const TYPE_ORDER = ['Bank', 'CreditCard', 'UPI', 'Cash', 'Wallet'];
  const grouped = TYPE_ORDER
    .map(t => ({ type: t, sources: active.filter(s => s.type === t) }))
    .filter(g => g.sources.length > 0);

  const onEdit   = (s: PaymentSource) => { setEditing(s); setShowForm(true); };

  return (
    <div>
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 24 }}>
        <h1 style={{ margin: 0, fontSize: 24, fontWeight: 700 }}>Payment Sources</h1>
        <button onClick={() => { setEditing(null); setShowForm(true); }} style={addBtnStyle}>+ Add Source</button>
      </div>

      {loading ? <p style={{ color: '#94a3b8' }}>Loading…</p> : (
        <>
          {items.length === 0 && (
            <div style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: 40, textAlign: 'center', color: '#94a3b8' }}>
              No payment sources yet. Add your bank accounts and credit cards to track where money goes.
            </div>
          )}

          {grouped.map(({ type, sources }) => {
            const typeLabel = TYPES.find(t => t.value === typeVal(type))?.label ?? type;
            return (
              <div key={type} style={{ marginBottom: 24 }}>
                <p style={{ margin: '0 0 10px', fontSize: 12, fontWeight: 700, color: '#64748b', textTransform: 'uppercase', letterSpacing: 1 }}>
                  {typeLabel}
                </p>
                <SourceList items={sources} onEdit={onEdit} onDelete={handleDelete} onToggleActive={handleToggleActive} />
              </div>
            );
          })}

          {inactive.length > 0 && (
            <div style={{ marginBottom: 24 }}>
              <p style={{ margin: '0 0 10px', fontSize: 12, fontWeight: 700, color: '#94a3b8', textTransform: 'uppercase', letterSpacing: 1 }}>Closed Cards</p>
              <SourceList items={inactive} onEdit={onEdit} onDelete={handleDelete} onToggleActive={handleToggleActive} />
            </div>
          )}
        </>
      )}

      {showForm && (
        <SourceForm
          initial={editing}
          onClose={() => setShowForm(false)}
          onSaved={() => { setShowForm(false); load(); }}
        />
      )}
    </div>
  );
}

function SourceList({ items, onEdit, onDelete, onToggleActive }: {
  items: PaymentSource[];
  onEdit: (s: PaymentSource) => void;
  onDelete: (id: string, name: string) => void;
  onToggleActive: (id: string, current: boolean) => void;
}) {
  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: 12 }}>
      {items.map(s => {
        const badge = TYPE_BADGE[s.type] ?? { bg: '#f1f5f9', color: '#334155' };
        const typeLabel = TYPES.find(t => t.value === typeVal(s.type))?.label ?? s.type;
        return (
          <div key={s.id} style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: '16px 20px', display: 'flex', alignItems: 'center', gap: 16, opacity: s.isActive ? 1 : 0.65 }}>
            <div style={{ flex: 1 }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: 10, flexWrap: 'wrap' }}>
                <span style={{ fontWeight: 700, fontSize: 15 }}>{s.name}</span>
                <span style={{ padding: '2px 9px', borderRadius: 10, fontSize: 11, fontWeight: 700, background: badge.bg, color: badge.color }}>{typeLabel}</span>
                {s.accountLast4 && <span style={{ fontSize: 12, color: '#94a3b8' }}>···{s.accountLast4}</span>}
                {!s.isActive && <span style={{ fontSize: 11, color: '#94a3b8', background: '#f1f5f9', padding: '2px 7px', borderRadius: 8 }}>Closed</span>}
              </div>
              <div style={{ marginTop: 6, fontSize: 12, color: '#64748b', display: 'flex', gap: 16, flexWrap: 'wrap', alignItems: 'center' }}>
                {s.bankName && <span>🏦 {s.bankName}</span>}
                {s.creditLimit && <span>Limit: {fmt(s.creditLimit)}</span>}
                {s.billingCycleDay && <span>Billing closes: day <strong>{s.billingCycleDay}</strong></span>}
                {s.dueDaysAfterBilling && <span>Due: {s.dueDaysAfterBilling} days after</span>}
                <span style={{ fontWeight: 700, fontSize: 13, color: s.balance >= 0 ? '#10b981' : '#ef4444' }}>
                  Balance: {s.balance >= 0 ? '' : '-'}{fmt(s.balance)}
                </span>
              </div>
            </div>
            <button
              onClick={() => onToggleActive(s.id, s.isActive)}
              title={s.isActive ? 'Close this card' : 'Reopen this card'}
              style={{ ...iconBtn(s.isActive ? '#f59e0b' : '#10b981'), fontSize: 14, padding: '4px 8px', border: `1px solid ${s.isActive ? '#fde68a' : '#a7f3d0'}`, borderRadius: 6, background: s.isActive ? '#fefce8' : '#f0fdf4' }}
            >
              {s.isActive ? '🔒 Close' : '🔓 Reopen'}
            </button>
            <button onClick={() => onEdit(s)} style={iconBtn('#3b82f6')}>✏️</button>
            <button onClick={() => onDelete(s.id, s.name)} style={iconBtn('#ef4444')}>🗑️</button>
          </div>
        );
      })}
    </div>
  );
}

function typeVal(typeStr: string): number {
  const map: Record<string, number> = { Bank: 1, CreditCard: 2, Cash: 3, UPI: 4, Wallet: 5 };
  return map[typeStr] ?? 1;
}

function SourceForm({ initial, onClose, onSaved }: { initial: PaymentSource | null; onClose: () => void; onSaved: () => void }) {
  const [name, setName] = useState(initial?.name ?? '');
  const [type, setType] = useState<number>(initial ? typeVal(initial.type) : 1);
  const [accountLast4, setAccountLast4] = useState(initial?.accountLast4 ?? '');
  const [bankName, setBankName] = useState(initial?.bankName ?? '');
  const [creditLimit, setCreditLimit] = useState(initial?.creditLimit?.toString() ?? '');
  const [billingCycleDay, setBillingCycleDay] = useState(initial?.billingCycleDay?.toString() ?? '');
  const [dueDays, setDueDays] = useState(initial?.dueDaysAfterBilling?.toString() ?? '');
  const [balance, setBalance] = useState(initial?.balance?.toString() ?? '0');
  const [isActive, setIsActive] = useState(initial?.isActive ?? true);
  const [loading, setLoading] = useState(false);

  const isCc = type === 2;

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setLoading(true);
    try {
      const payload: Record<string, unknown> = { name, type };
      if (accountLast4) payload.accountLast4 = accountLast4;
      if (bankName) payload.bankName = bankName;
      if (isCc && creditLimit) payload.creditLimit = parseFloat(creditLimit);
      if (isCc && billingCycleDay) payload.billingCycleDay = parseInt(billingCycleDay);
      if (isCc && dueDays) payload.dueDaysAfterBilling = parseInt(dueDays);
      payload.balance = parseFloat(balance) || 0;
      if (initial) {
        payload.isActive = isActive;
        await api.put(`/api/payment-sources/${initial.id}`, payload);
      } else {
        await api.post('/api/payment-sources', payload);
      }
      onSaved();
    } catch (err: unknown) {
      alert(err instanceof Error ? err.message : 'Failed');
    } finally { setLoading(false); }
  }

  return (
    <Modal title={initial ? 'Edit Payment Source' : 'Add Payment Source'} onClose={onClose}>
      <form onSubmit={handleSubmit}>
        <Field label="Name">
          <input style={fieldInput} value={name} onChange={e => setName(e.target.value)} placeholder="e.g. HDFC Savings, ICICI CC" required />
        </Field>

        <Field label="Type">
          <select style={fieldInput} value={type} onChange={e => setType(+e.target.value)}>
            {TYPES.map(t => <option key={t.value} value={t.value}>{t.label}</option>)}
          </select>
        </Field>

        <Field label="Last 4 digits (optional)">
          <input style={fieldInput} value={accountLast4} onChange={e => setAccountLast4(e.target.value.slice(0, 4))} placeholder="e.g. 4321" maxLength={4} />
        </Field>

        <Field label="Bank name (optional)">
          <input style={fieldInput} value={bankName} onChange={e => setBankName(e.target.value)} placeholder="e.g. HDFC, SBI" />
        </Field>

        {isCc && (
          <>
            <Field label="Credit limit (₹)">
              <input style={fieldInput} type="number" step="1000" value={creditLimit} onChange={e => setCreditLimit(e.target.value)} placeholder="e.g. 200000" />
            </Field>
            <Field label="Billing cycle close day (1–31)">
              <input style={fieldInput} type="number" min={1} max={31} value={billingCycleDay} onChange={e => setBillingCycleDay(e.target.value)} placeholder="e.g. 5 (bill closes on 5th of each month)" />
              {billingCycleDay && (
                <div style={{ marginTop: 6, fontSize: 12, color: '#d97706', background: '#fef3c7', padding: '6px 10px', borderRadius: 6 }}>
                  Expenses from day {+billingCycleDay + 1} of prev month → day {billingCycleDay} this month will go into this month&apos;s bill.
                </div>
              )}
            </Field>
            <Field label="Due days after billing close">
              <input style={fieldInput} type="number" min={1} max={60} value={dueDays} onChange={e => setDueDays(e.target.value)} placeholder="e.g. 20" />
            </Field>
          </>
        )}

        <Field label="Current balance (₹)">
          <input style={fieldInput} type="number" step="0.01" value={balance} onChange={e => setBalance(e.target.value)} placeholder="0.00" />
          <p style={{ margin: '4px 0 0', fontSize: 11, color: '#94a3b8' }}>
            {initial ? 'Adjust if balance is wrong (transfers update this automatically)' : 'Opening balance — set to current account balance'}
          </p>
        </Field>

        {initial && (
          <Field label="">
            <label style={{ display: 'flex', alignItems: 'center', gap: 8, cursor: 'pointer', fontSize: 14 }}>
              <input type="checkbox" checked={isActive} onChange={e => setIsActive(e.target.checked)} />
              Active (uncheck to hide from expense form)
            </label>
          </Field>
        )}

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
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', zIndex: 1000, display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '0 16px' }}>
      <div style={{ background: '#fff', borderRadius: 16, padding: '28px', width: '100%', maxWidth: 440, maxHeight: '90vh', overflowY: 'auto', boxShadow: '0 8px 40px rgba(0,0,0,0.15)' }}>
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
      {label && <label style={{ display: 'block', fontSize: 13, fontWeight: 500, marginBottom: 4, color: '#374151' }}>{label}</label>}
      {children}
    </div>
  );
}

const fieldInput: React.CSSProperties = { width: '100%', padding: '9px 12px', borderRadius: 8, border: '1px solid #e2e8f0', fontSize: 14, boxSizing: 'border-box', outline: 'none' };
const submitBtn: React.CSSProperties = { flex: 1, padding: '10px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const addBtnStyle: React.CSSProperties = { padding: '9px 18px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const iconBtn = (color: string): React.CSSProperties => ({ border: 'none', background: 'none', cursor: 'pointer', fontSize: 16, color, marginLeft: 6 });
