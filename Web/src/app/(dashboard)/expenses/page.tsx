'use client';

import { useEffect, useState, FormEvent } from 'react';
import { api } from '@/lib/api';

interface Expense {
  id: string; amount: number; category: string;
  description: string; date: string;
  paymentSourceId?: string; paymentSourceName?: string;
}

interface PaymentSource {
  id: string; name: string; type: string;
  billingCycleDay?: number; dueDaysAfterBilling?: number;
  accountLast4?: string; bankName?: string; isActive: boolean;
}

interface Category {
  id: string; name: string; type: string; parentId?: string;
  subCategories: Category[];
}

interface DateGroup {
  dateKey: string; displayDate: string; items: Expense[]; dayTotal: number;
}

const FALLBACK_CATEGORIES = ['Food', 'Transport', 'Shopping', 'Health', 'Entertainment', 'Utilities', 'Education', 'Other'];

const now = new Date();

function groupByDate(items: Expense[]): DateGroup[] {
  const sorted = [...items].sort((a, b) => new Date(b.date).getTime() - new Date(a.date).getTime());
  const map = new Map<string, Expense[]>();
  for (const e of sorted) {
    const key = e.date.slice(0, 10);
    if (!map.has(key)) map.set(key, []);
    map.get(key)!.push(e);
  }
  return [...map.entries()].map(([key, rows]) => ({
    dateKey: key,
    displayDate: new Date(key + 'T00:00:00').toLocaleDateString('en-IN', { day: 'numeric', month: 'short', year: 'numeric' }),
    items: rows,
    dayTotal: rows.reduce((s, e) => s + e.amount, 0),
  }));
}

export default function ExpensesPage() {
  const [items, setItems] = useState<Expense[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editing, setEditing] = useState<Expense | null>(null);
  const [year, setYear] = useState(now.getFullYear());
  const [month, setMonth] = useState(now.getMonth() + 1);

  async function load() {
    setLoading(true);
    try {
      const data = await api.get<Expense[]>(`/api/expenses?year=${year}&month=${month}`);
      setItems(data ?? []);
    } catch { setItems([]); } finally { setLoading(false); }
  }

  useEffect(() => { load(); }, [year, month]);

  async function handleDelete(id: string) {
    if (!confirm('Delete this expense?')) return;
    await api.delete(`/api/expenses/${id}`);
    load();
  }

  const total = items.reduce((s, e) => s + e.amount, 0);
  const fmt = (n: number) => `₹${n.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`;
  const groups = groupByDate(items);

  return (
    <div>
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 24 }}>
        <h1 style={{ margin: 0, fontSize: 24, fontWeight: 700 }}>Expenses</h1>
        <button onClick={() => { setEditing(null); setShowForm(true); }} style={addBtnStyle}>+ Add Expense</button>
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
        <div style={{ marginLeft: 'auto', fontWeight: 600, color: '#ef4444', fontSize: 18 }}>Total: {fmt(total)}</div>
      </div>

      {loading ? <p style={{ color: '#94a3b8' }}>Loading…</p> : (
        <div style={{ display: 'flex', flexDirection: 'column', gap: 16 }}>
          {groups.length === 0 ? (
            <div style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: 24, textAlign: 'center', color: '#94a3b8' }}>
              No expenses for this period
            </div>
          ) : groups.map(group => (
            <div key={group.dateKey} style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', overflow: 'hidden' }}>
              <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', padding: '10px 20px', background: '#f8fafc', borderBottom: '1px solid #f1f5f9' }}>
                <span style={{ fontWeight: 700, fontSize: 13, color: '#334155' }}>{group.displayDate}</span>
                <span style={{ fontWeight: 600, fontSize: 13, color: '#ef4444' }}>-{fmt(group.dayTotal)}</span>
              </div>
              {group.items.map((e, i) => (
                <div key={e.id} style={{ display: 'flex', alignItems: 'center', padding: '14px 20px', borderBottom: i < group.items.length - 1 ? '1px solid #f1f5f9' : 'none' }}>
                  <div style={{ flex: 1 }}>
                    <div style={{ fontWeight: 600, fontSize: 14 }}>{e.category}</div>
                    <div style={{ fontSize: 12, color: '#94a3b8', marginTop: 2 }}>
                      {[e.description, e.paymentSourceName].filter(Boolean).join(' · ') || '—'}
                    </div>
                  </div>
                  <div style={{ fontWeight: 700, color: '#ef4444', fontSize: 16, marginRight: 16 }}>{fmt(e.amount)}</div>
                  <button onClick={() => { setEditing(e); setShowForm(true); }} style={iconBtn('#3b82f6')}>✏️</button>
                  <button onClick={() => handleDelete(e.id)} style={iconBtn('#ef4444')}>🗑️</button>
                </div>
              ))}
            </div>
          ))}
        </div>
      )}

      {showForm && (
        <ExpenseForm
          initial={editing}
          onClose={() => setShowForm(false)}
          onSaved={() => { setShowForm(false); load(); }}
        />
      )}
    </div>
  );
}

function ExpenseForm({ initial, onClose, onSaved }: { initial: Expense | null; onClose: () => void; onSaved: () => void }) {
  const [amount, setAmount] = useState(initial?.amount.toString() ?? '');
  const [description, setDescription] = useState(initial?.description ?? '');
  const [date, setDate] = useState(initial ? initial.date.slice(0, 10) : new Date().toISOString().slice(0, 10));
  const [paymentSourceId, setPaymentSourceId] = useState(initial?.paymentSourceId ?? '');
  // Initialise directly from initial so the select isn't blank while the API loads
  const initParts = initial?.category ? initial.category.split(' / ') : ['', ''];
  const [parentCategory, setParentCategory] = useState(initParts[0]);
  const [subCategory, setSubCategory] = useState(initParts[1] ?? '');
  const [loading, setLoading] = useState(false);

  const [sources, setSources] = useState<PaymentSource[]>([]);
  const [categories, setCategories] = useState<Category[]>([]);
  const [metaLoaded, setMetaLoaded] = useState(false);

  useEffect(() => {
    Promise.all([
      api.get<PaymentSource[]>('/api/payment-sources').catch(() => [] as PaymentSource[]),
      api.get<Category[]>('/api/categories?type=1').catch(() => [] as Category[]),
    ]).then(([srcs, cats]) => {
      setSources((srcs ?? []).filter(s => s.isActive));
      setCategories(cats ?? []);
    }).finally(() => setMetaLoaded(true));
  }, []);

  function handleParentChange(val: string) {
    setParentCategory(val);
    setSubCategory('');
  }

  const selectedSource = sources.find(s => s.id === paymentSourceId);
  const isCc = selectedSource?.type === 'CreditCard';

  // Build parent options: API categories, or fallback list, always including the current value so edit never shows blank
  const baseOptions: string[] = categories.length > 0 ? categories.map(c => c.name) : FALLBACK_CATEGORIES;
  const parentOptions: string[] = parentCategory && !baseOptions.includes(parentCategory)
    ? [parentCategory, ...baseOptions]
    : baseOptions;

  const selectedParentCat = categories.find(c => c.name === parentCategory);
  const subOptions: string[] = selectedParentCat?.subCategories?.map(s => s.name) ?? [];

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setLoading(true);
    try {
      const categoryValue = subCategory ? `${parentCategory} / ${subCategory}` : parentCategory;
      const payload: Record<string, unknown> = {
        amount: parseFloat(amount),
        category: categoryValue || 'Other',
        description,
        date: new Date(date).toISOString(),
      };
      if (paymentSourceId) payload.paymentSourceId = paymentSourceId;

      if (initial) await api.put(`/api/expenses/${initial.id}`, payload);
      else await api.post('/api/expenses', payload);
      onSaved();
    } catch (err: unknown) {
      alert(err instanceof Error ? err.message : 'Failed');
    } finally { setLoading(false); }
  }

  return (
    <Modal title={initial ? 'Edit Expense' : 'Add Expense'} onClose={onClose}>
      <form onSubmit={handleSubmit}>
        <Field label="Amount (₹)">
          <input style={fieldInput} type="number" step="0.01" value={amount} onChange={e => setAmount(e.target.value)} required />
        </Field>

        <Field label="Payment Source">
          {!metaLoaded ? (
            <div style={{ ...fieldInput, color: '#94a3b8', display: 'flex', alignItems: 'center' }}>Loading…</div>
          ) : (
            <select style={fieldInput} value={paymentSourceId} onChange={e => setPaymentSourceId(e.target.value)}>
              <option value="">— None / Cash —</option>
              {sources.map(s => (
                <option key={s.id} value={s.id}>
                  {s.name}{s.type === 'CreditCard' ? ' (CC)' : ''}{s.accountLast4 ? ` ···${s.accountLast4}` : ''}
                </option>
              ))}
            </select>
          )}
          {isCc && selectedSource?.billingCycleDay && (
            <div style={{ marginTop: 6, fontSize: 12, color: '#d97706', background: '#fef3c7', padding: '6px 10px', borderRadius: 6 }}>
              CC billing closes on day <strong>{selectedSource.billingCycleDay}</strong> each month.
              {selectedSource.dueDaysAfterBilling ? ` Due ${selectedSource.dueDaysAfterBilling} days after.` : ''}
              {' '}Expense will appear in the bill whose window includes this date.
            </div>
          )}
        </Field>

        <Field label="Category">
          <select style={fieldInput} value={parentCategory} onChange={e => handleParentChange(e.target.value)} required>
            <option value="">— Select category —</option>
            {parentOptions.map(name => (
              <option key={name} value={name}>{name}</option>
            ))}
          </select>
        </Field>

        {subOptions.length > 0 && (
          <Field label="Sub-category">
            <select style={fieldInput} value={subCategory} onChange={e => setSubCategory(e.target.value)}>
              <option value="">— None —</option>
              {subOptions.map(name => (
                <option key={name} value={name}>{name}</option>
              ))}
            </select>
          </Field>
        )}

        <Field label="Description">
          <input style={fieldInput} value={description} onChange={e => setDescription(e.target.value)} placeholder="Optional" />
        </Field>

        <Field label="Date">
          <input style={fieldInput} type="date" value={date} onChange={e => setDate(e.target.value)} required />
        </Field>

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
