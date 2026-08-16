'use client';

import { useEffect, useState, FormEvent } from 'react';
import { api } from '@/lib/api';

/* ── Types ─────────────────────────────────────────────────────────── */
interface Category {
  id: string; name: string; type: string; parentId?: string;
  subCategories: Category[];
}
interface PaymentSource {
  id: string; name: string; type: string;
  accountLast4?: string; bankName?: string;
  creditLimit?: number; billingCycleDay?: number;
  dueDaysAfterBilling?: number; balance: number; isActive: boolean;
}

/* ── Category helpers ───────────────────────────────────────────────── */
const CAT_TYPES = [
  { value: 1, label: 'Expense', color: '#ef4444', bg: '#fee2e2' },
  { value: 2, label: 'Income',  color: '#10b981', bg: '#dcfce7' },
  { value: 3, label: 'Both',    color: '#3b82f6', bg: '#dbeafe' },
];
const TYPE_ORDER = [1, 2, 3];
const catTypeInfo = (t: string) => {
  const map: Record<string,number> = { Expense: 1, Income: 2, Both: 3 };
  return CAT_TYPES.find(c => c.value === (map[t] ?? 1)) ?? CAT_TYPES[0];
};
const catTypeVal = (t: string) => ({ Expense: 1, Income: 2, Both: 3 }[t] ?? 1);

/* ── Payment Source helpers ─────────────────────────────────────────── */
const SRC_TYPES = [
  { value: 1, label: 'Bank Account' }, { value: 2, label: 'Credit Card' },
  { value: 3, label: 'Cash' },         { value: 4, label: 'UPI' },
  { value: 5, label: 'Wallet' },
];
const SRC_BADGE: Record<string,{ bg: string; color: string }> = {
  Bank: { bg: '#dbeafe', color: '#1e40af' }, CreditCard: { bg: '#fce7f3', color: '#9d174d' },
  Cash: { bg: '#dcfce7', color: '#166534' }, UPI:        { bg: '#ede9fe', color: '#5b21b6' },
  Wallet: { bg: '#fef3c7', color: '#92400e' },
};
const srcTypeVal = (t: string) => ({ Bank: 1, CreditCard: 2, Cash: 3, UPI: 4, Wallet: 5 }[t] ?? 1);
const fmtBalance = (n: number) => `₹${n.toLocaleString('en-IN', { minimumFractionDigits: 0 })}`;

/* ══════════════════════════════════════════════════════════════════════
   MAIN PAGE
   ═════════════════════════════════════════════════════════════════════ */
export default function SettingsPage() {
  const [tab, setTab] = useState<'categories' | 'payment-sources'>('categories');

  return (
    <div>
      <h1 style={{ margin: '0 0 20px', fontSize: 24, fontWeight: 700 }}>Settings</h1>

      {/* Tab bar */}
      <div style={{ display: 'flex', gap: 8, marginBottom: 28, borderBottom: '2px solid #f1f5f9', paddingBottom: 0 }}>
        {(['categories', 'payment-sources'] as const).map(t => (
          <button
            key={t}
            onClick={() => setTab(t)}
            style={{
              padding: '10px 20px', border: 'none', cursor: 'pointer',
              background: 'none', fontWeight: 600, fontSize: 14,
              color: tab === t ? '#3b82f6' : '#64748b',
              borderBottom: tab === t ? '2px solid #3b82f6' : '2px solid transparent',
              marginBottom: -2,
            }}
          >
            {t === 'categories' ? '🏷️ Categories' : '💳 Payment Sources'}
          </button>
        ))}
      </div>

      {tab === 'categories' ? <CategoriesSection /> : <PaymentSourcesSection />}
    </div>
  );
}

/* ══════════════════════════════════════════════════════════════════════
   CATEGORIES SECTION
   ═════════════════════════════════════════════════════════════════════ */
function CategoriesSection() {
  const [cats, setCats]     = useState<Category[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editing, setEditing]   = useState<Category | null>(null);
  const [parentId, setParentId] = useState<string | null>(null);

  async function load() {
    setLoading(true);
    try { setCats((await api.get<Category[]>('/api/categories')) ?? []); }
    catch { setCats([]); } finally { setLoading(false); }
  }
  useEffect(() => { load(); }, []);

  async function handleDelete(id: string, name: string) {
    if (!confirm(`Delete "${name}"? Its sub-categories will also be deleted.`)) return;
    await api.delete(`/api/categories/${id}`);
    load();
  }

  const topLevel = cats.filter(c => !c.parentId);
  const grouped = TYPE_ORDER.map(tv => ({
    info: CAT_TYPES.find(t => t.value === tv)!,
    items: topLevel.filter(c => catTypeVal(c.type) === tv),
  })).filter(g => g.items.length > 0);

  return (
    <div>
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 16 }}>
        <p style={{ margin: 0, color: '#64748b', fontSize: 14 }}>
          Define your own expense and income categories.
        </p>
        <button onClick={() => { setEditing(null); setParentId(null); setShowForm(true); }} style={addBtnStyle}>
          + Add Category
        </button>
      </div>

      {loading ? <p style={{ color: '#94a3b8' }}>Loading…</p> : (
        <>
          {cats.length === 0 && (
            <div style={emptyBox}>No categories yet. Add your first category to customise expense tracking.</div>
          )}
          {grouped.map(({ info, items }) => (
            <div key={info.value} style={{ marginBottom: 28 }}>
              <p style={{ margin: '0 0 10px', fontSize: 12, fontWeight: 700, color: info.color, textTransform: 'uppercase', letterSpacing: 1 }}>
                {info.label}
              </p>
              <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
                {items.map(cat => (
                  <div key={cat.id} style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', overflow: 'hidden' }}>
                    <div style={{ display: 'flex', alignItems: 'center', padding: '14px 20px', borderBottom: cat.subCategories.length > 0 ? '1px solid #f1f5f9' : 'none' }}>
                      <span style={{ flex: 1, fontWeight: 700, fontSize: 15 }}>{cat.name}</span>
                      <span style={{ padding: '2px 8px', borderRadius: 10, fontSize: 11, fontWeight: 700, background: catTypeInfo(cat.type).bg, color: catTypeInfo(cat.type).color, marginRight: 12 }}>
                        {catTypeInfo(cat.type).label}
                      </span>
                      <button
                        onClick={() => { setEditing(null); setParentId(cat.id); setShowForm(true); }}
                        style={{ ...iconBtn('#10b981'), fontSize: 13, padding: '4px 8px', borderRadius: 6, background: '#f0fdf4', border: '1px solid #bbf7d0', marginRight: 6 }}
                      >+ Sub</button>
                      <button onClick={() => { setEditing(cat); setParentId(null); setShowForm(true); }} style={iconBtn('#3b82f6')}>✏️</button>
                      <button onClick={() => handleDelete(cat.id, cat.name)} style={iconBtn('#ef4444')}>🗑️</button>
                    </div>
                    {cat.subCategories.map((sub, i) => (
                      <div key={sub.id} style={{ display: 'flex', alignItems: 'center', padding: '10px 20px 10px 36px', background: '#fafafa', borderBottom: i < cat.subCategories.length - 1 ? '1px solid #f1f5f9' : 'none' }}>
                        <span style={{ fontSize: 13, color: '#374151', flex: 1 }}>↳ {sub.name}</span>
                        <button onClick={() => { setEditing(sub); setParentId(null); setShowForm(true); }} style={iconBtn('#3b82f6')}>✏️</button>
                        <button onClick={() => handleDelete(sub.id, sub.name)} style={iconBtn('#ef4444')}>🗑️</button>
                      </div>
                    ))}
                  </div>
                ))}
              </div>
            </div>
          ))}
        </>
      )}

      {showForm && (
        <CategoryForm
          initial={editing} parentId={parentId}
          onClose={() => setShowForm(false)}
          onSaved={() => { setShowForm(false); load(); }}
        />
      )}
    </div>
  );
}

function CategoryForm({ initial, parentId, onClose, onSaved }: {
  initial: Category | null; parentId: string | null;
  onClose: () => void; onSaved: () => void;
}) {
  const [name, setName] = useState(initial?.name ?? '');
  const [type, setType] = useState<number>(initial ? catTypeVal(initial.type) : 1);
  const [loading, setLoading] = useState(false);
  const [error, setError]     = useState('');
  const isSub = !!parentId || !!initial?.parentId;
  const title = isSub ? (initial ? 'Edit Sub-category' : 'Add Sub-category') : (initial ? 'Edit Category' : 'Add Category');

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    if (!name.trim()) { setError('Name is required'); return; }
    setLoading(true); setError('');
    try {
      const payload: Record<string,unknown> = { name: name.trim(), type };
      if (parentId) payload.parentId = parentId;
      else if (initial?.parentId) payload.parentId = initial.parentId;
      if (initial) {
        await api.put(`/api/categories/${initial.id}`, payload);
      } else {
        const created = await api.post<{ id: string }>('/api/categories', payload);
        if (!parentId && created?.id)
          await api.post('/api/categories', { name: 'Other', type, parentId: created.id });
      }
      onSaved();
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'Failed to save');
    } finally { setLoading(false); }
  }

  return (
    <Modal title={title} onClose={onClose}>
      <form onSubmit={handleSubmit}>
        <Field label="Name">
          <input style={fieldInput} value={name} onChange={e => setName(e.target.value)}
            placeholder={isSub ? 'e.g. Restaurant, Petrol' : 'e.g. Food, Transport'} required autoFocus />
        </Field>
        {!isSub && (
          <Field label="Type">
            <div style={{ display: 'flex', gap: 8 }}>
              {CAT_TYPES.map(t => (
                <button key={t.value} type="button" onClick={() => setType(t.value)} style={{
                  flex: 1, padding: '8px 0', borderRadius: 8,
                  border: `2px solid ${type === t.value ? t.color : '#e2e8f0'}`,
                  background: type === t.value ? t.bg : '#fff',
                  color: type === t.value ? t.color : '#64748b',
                  fontWeight: 600, fontSize: 13, cursor: 'pointer',
                }}>{t.label}</button>
              ))}
            </div>
          </Field>
        )}
        {isSub && (
          <p style={{ fontSize: 12, color: '#64748b', background: '#f8fafc', padding: '8px 12px', borderRadius: 8, marginBottom: 14 }}>
            Sub-category inherits the type from its parent.
          </p>
        )}
        {error && <p style={{ color: '#ef4444', fontSize: 13, marginBottom: 12 }}>{error}</p>}
        <div style={{ display: 'flex', gap: 8, marginTop: 20 }}>
          <button type="button" onClick={onClose} style={{ ...submitBtn, background: '#f1f5f9', color: '#374151' }}>Cancel</button>
          <button type="submit" disabled={loading} style={submitBtn}>{loading ? 'Saving…' : 'Save'}</button>
        </div>
      </form>
    </Modal>
  );
}

/* ══════════════════════════════════════════════════════════════════════
   PAYMENT SOURCES SECTION
   ═════════════════════════════════════════════════════════════════════ */
function PaymentSourcesSection() {
  const [items, setItems]   = useState<PaymentSource[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editing, setEditing]   = useState<PaymentSource | null>(null);

  async function load() {
    setLoading(true);
    try { setItems((await api.get<PaymentSource[]>('/api/payment-sources')) ?? []); }
    catch { setItems([]); } finally { setLoading(false); }
  }
  useEffect(() => { load(); }, []);

  async function handleDelete(id: string, name: string) {
    if (!confirm(`Delete "${name}"? Expenses linked to it will lose the source link.`)) return;
    await api.delete(`/api/payment-sources/${id}`);
    load();
  }
  async function handleToggleActive(id: string, current: boolean) {
    if (!confirm(`${current ? 'Close' : 'Reopen'} this card?`)) return;
    await api.patch(`/api/payment-sources/${id}/status`, { isActive: !current });
    load();
  }

  const active   = items.filter(s => s.isActive);
  const inactive = items.filter(s => !s.isActive);
  const SRC_ORDER = ['Bank', 'CreditCard', 'UPI', 'Cash', 'Wallet'];
  const grouped = SRC_ORDER.map(t => ({ type: t, sources: active.filter(s => s.type === t) })).filter(g => g.sources.length > 0);

  return (
    <div>
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 16 }}>
        <p style={{ margin: 0, color: '#64748b', fontSize: 14 }}>
          Manage your bank accounts and credit cards.
        </p>
        <button onClick={() => { setEditing(null); setShowForm(true); }} style={addBtnStyle}>+ Add Source</button>
      </div>

      {loading ? <p style={{ color: '#94a3b8' }}>Loading…</p> : (
        <>
          {items.length === 0 && (
            <div style={emptyBox}>No payment sources yet. Add your bank accounts and credit cards.</div>
          )}
          {grouped.map(({ type, sources }) => (
            <div key={type} style={{ marginBottom: 24 }}>
              <p style={{ margin: '0 0 10px', fontSize: 12, fontWeight: 700, color: '#64748b', textTransform: 'uppercase', letterSpacing: 1 }}>
                {SRC_TYPES.find(t => t.value === srcTypeVal(type))?.label ?? type}
              </p>
              <SourceList items={sources} onEdit={s => { setEditing(s); setShowForm(true); }} onDelete={handleDelete} onToggleActive={handleToggleActive} />
            </div>
          ))}
          {inactive.length > 0 && (
            <div style={{ marginBottom: 24 }}>
              <p style={{ margin: '0 0 10px', fontSize: 12, fontWeight: 700, color: '#94a3b8', textTransform: 'uppercase', letterSpacing: 1 }}>Closed Cards</p>
              <SourceList items={inactive} onEdit={s => { setEditing(s); setShowForm(true); }} onDelete={handleDelete} onToggleActive={handleToggleActive} />
            </div>
          )}
        </>
      )}

      {showForm && (
        <SourceForm initial={editing} onClose={() => setShowForm(false)} onSaved={() => { setShowForm(false); load(); }} />
      )}
    </div>
  );
}

function SourceList({ items, onEdit, onDelete, onToggleActive }: {
  items: PaymentSource[]; onEdit: (s: PaymentSource) => void;
  onDelete: (id: string, name: string) => void; onToggleActive: (id: string, current: boolean) => void;
}) {
  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: 12 }}>
      {items.map(s => {
        const badge = SRC_BADGE[s.type] ?? { bg: '#f1f5f9', color: '#334155' };
        const typeLabel = SRC_TYPES.find(t => t.value === srcTypeVal(s.type))?.label ?? s.type;
        return (
          <div key={s.id} style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: '16px 20px', display: 'flex', alignItems: 'center', gap: 16, opacity: s.isActive ? 1 : 0.65 }}>
            <div style={{ flex: 1 }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: 10, flexWrap: 'wrap' }}>
                <span style={{ fontWeight: 700, fontSize: 15 }}>{s.name}</span>
                <span style={{ padding: '2px 9px', borderRadius: 10, fontSize: 11, fontWeight: 700, background: badge.bg, color: badge.color }}>{typeLabel}</span>
                {s.accountLast4 && <span style={{ fontSize: 12, color: '#94a3b8' }}>···{s.accountLast4}</span>}
                {!s.isActive && <span style={{ fontSize: 11, color: '#94a3b8', background: '#f1f5f9', padding: '2px 7px', borderRadius: 8 }}>Closed</span>}
              </div>
              <div style={{ marginTop: 6, fontSize: 12, color: '#64748b', display: 'flex', gap: 16, flexWrap: 'wrap' }}>
                {s.bankName && <span>🏦 {s.bankName}</span>}
                {s.creditLimit && <span>Limit: {fmtBalance(s.creditLimit)}</span>}
                {s.billingCycleDay && <span>Billing closes: day <strong>{s.billingCycleDay}</strong></span>}
                {s.dueDaysAfterBilling && <span>Due: {s.dueDaysAfterBilling} days after</span>}
                <span style={{ fontWeight: 700, fontSize: 13, color: s.balance >= 0 ? '#10b981' : '#ef4444' }}>
                  Balance: {s.balance >= 0 ? '' : '-'}{fmtBalance(Math.abs(s.balance))}
                </span>
              </div>
            </div>
            <button onClick={() => onToggleActive(s.id, s.isActive)}
              style={{ ...iconBtn(s.isActive ? '#f59e0b' : '#10b981'), fontSize: 14, padding: '4px 8px', border: `1px solid ${s.isActive ? '#fde68a' : '#a7f3d0'}`, borderRadius: 6, background: s.isActive ? '#fefce8' : '#f0fdf4' }}>
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

function SourceForm({ initial, onClose, onSaved }: { initial: PaymentSource | null; onClose: () => void; onSaved: () => void }) {
  const [name, setName]       = useState(initial?.name ?? '');
  const [type, setType]       = useState<number>(initial ? srcTypeVal(initial.type) : 1);
  const [last4, setLast4]     = useState(initial?.accountLast4 ?? '');
  const [bank, setBank]       = useState(initial?.bankName ?? '');
  const [limit, setLimit]     = useState(initial?.creditLimit?.toString() ?? '');
  const [billingDay, setBillingDay] = useState(initial?.billingCycleDay?.toString() ?? '');
  const [dueDays, setDueDays] = useState(initial?.dueDaysAfterBilling?.toString() ?? '');
  const [balance, setBalance] = useState(initial?.balance?.toString() ?? '0');
  const [isActive, setIsActive] = useState(initial?.isActive ?? true);
  const [loading, setLoading] = useState(false);
  const isCc = type === 2;

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setLoading(true);
    try {
      const payload: Record<string,unknown> = { name, type };
      if (last4)    payload.accountLast4 = last4;
      if (bank)     payload.bankName = bank;
      if (isCc && limit)      payload.creditLimit = parseFloat(limit);
      if (isCc && billingDay) payload.billingCycleDay = parseInt(billingDay);
      if (isCc && dueDays)    payload.dueDaysAfterBilling = parseInt(dueDays);
      payload.balance = parseFloat(balance) || 0;
      if (initial) { payload.isActive = isActive; await api.put(`/api/payment-sources/${initial.id}`, payload); }
      else           await api.post('/api/payment-sources', payload);
      onSaved();
    } catch (err: unknown) { alert(err instanceof Error ? err.message : 'Failed'); }
    finally { setLoading(false); }
  }

  return (
    <Modal title={initial ? 'Edit Payment Source' : 'Add Payment Source'} onClose={onClose}>
      <form onSubmit={handleSubmit}>
        <Field label="Name">
          <input style={fieldInput} value={name} onChange={e => setName(e.target.value)} placeholder="e.g. HDFC Savings" required />
        </Field>
        <Field label="Type">
          <select style={fieldInput} value={type} onChange={e => setType(+e.target.value)}>
            {SRC_TYPES.map(t => <option key={t.value} value={t.value}>{t.label}</option>)}
          </select>
        </Field>
        <Field label="Last 4 digits (optional)">
          <input style={fieldInput} value={last4} onChange={e => setLast4(e.target.value.slice(0, 4))} placeholder="e.g. 4321" maxLength={4} />
        </Field>
        <Field label="Bank name (optional)">
          <input style={fieldInput} value={bank} onChange={e => setBank(e.target.value)} placeholder="e.g. HDFC, SBI" />
        </Field>
        {isCc && (
          <>
            <Field label="Credit limit (₹)">
              <input style={fieldInput} type="number" step="1000" value={limit} onChange={e => setLimit(e.target.value)} placeholder="e.g. 200000" />
            </Field>
            <Field label="Billing cycle close day (1–31)">
              <input style={fieldInput} type="number" min={1} max={31} value={billingDay} onChange={e => setBillingDay(e.target.value)} placeholder="e.g. 5" />
            </Field>
            <Field label="Due days after billing close">
              <input style={fieldInput} type="number" min={1} max={60} value={dueDays} onChange={e => setDueDays(e.target.value)} placeholder="e.g. 20" />
            </Field>
          </>
        )}
        <Field label="Current balance (₹)">
          <input style={fieldInput} type="number" step="0.01" value={balance} onChange={e => setBalance(e.target.value)} placeholder="0.00" />
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

/* ── Shared sub-components ──────────────────────────────────────────── */
function Modal({ title, onClose, children }: { title: string; onClose: () => void; children: React.ReactNode }) {
  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', zIndex: 1000, display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '0 16px' }}>
      <div style={{ background: '#fff', borderRadius: 16, padding: 28, width: '100%', maxWidth: 440, maxHeight: '90vh', overflowY: 'auto', boxShadow: '0 8px 40px rgba(0,0,0,0.15)' }}>
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

/* ── Style constants ────────────────────────────────────────────────── */
const fieldInput: React.CSSProperties  = { width: '100%', padding: '9px 12px', borderRadius: 8, border: '1px solid #e2e8f0', fontSize: 14, boxSizing: 'border-box', outline: 'none' };
const submitBtn: React.CSSProperties   = { flex: 1, padding: '10px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const addBtnStyle: React.CSSProperties = { padding: '9px 18px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const iconBtn = (color: string): React.CSSProperties => ({ border: 'none', background: 'none', cursor: 'pointer', fontSize: 16, color, marginLeft: 4 });
const emptyBox: React.CSSProperties   = { background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: 40, textAlign: 'center', color: '#94a3b8' };
