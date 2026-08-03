'use client';

import { useEffect, useState, FormEvent } from 'react';
import { api } from '@/lib/api';

interface Category {
  id: string; name: string; type: string; parentId?: string;
  subCategories: Category[];
}

// CategoryType enum: 1=Expense, 2=Income, 3=Both
const CAT_TYPES = [
  { value: 1, label: 'Expense',       color: '#ef4444', bg: '#fee2e2' },
  { value: 2, label: 'Income',        color: '#10b981', bg: '#dcfce7' },
  { value: 3, label: 'Both',          color: '#3b82f6', bg: '#dbeafe' },
];

const TYPE_ORDER = [1, 2, 3];

function typeInfo(typeStr: string) {
  // API returns string like "Expense", "Income", "Both"
  const map: Record<string, number> = { Expense: 1, Income: 2, Both: 3 };
  const val = map[typeStr] ?? 1;
  return CAT_TYPES.find(t => t.value === val) ?? CAT_TYPES[0];
}

function typeVal(typeStr: string): number {
  const map: Record<string, number> = { Expense: 1, Income: 2, Both: 3 };
  return map[typeStr] ?? 1;
}

export default function CategoriesPage() {
  const [cats, setCats]       = useState<Category[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editing, setEditing]   = useState<Category | null>(null);
  const [parentId, setParentId] = useState<string | null>(null); // null = top-level

  async function load() {
    setLoading(true);
    try {
      const data = await api.get<Category[]>('/api/categories');
      setCats(data ?? []);
    } catch { setCats([]); } finally { setLoading(false); }
  }

  useEffect(() => { load(); }, []);

  async function handleDelete(id: string, name: string) {
    if (!confirm(`Delete "${name}"? Its sub-categories will also be deleted.`)) return;
    await api.delete(`/api/categories/${id}`);
    load();
  }

  // Group top-level categories by type
  const topLevel = cats.filter(c => !c.parentId);
  const grouped = TYPE_ORDER.map(tv => ({
    typeVal: tv,
    info: CAT_TYPES.find(t => t.value === tv)!,
    items: topLevel.filter(c => typeVal(c.type) === tv),
  })).filter(g => g.items.length > 0);

  return (
    <div>
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 24 }}>
        <h1 style={{ margin: 0, fontSize: 24, fontWeight: 700 }}>Categories</h1>
        <button
          onClick={() => { setEditing(null); setParentId(null); setShowForm(true); }}
          style={addBtnStyle}
        >
          + Add Category
        </button>
      </div>

      <p style={{ margin: '0 0 20px', color: '#64748b', fontSize: 14 }}>
        Define your own expense and income categories. The expense form will use these instead of the default list.
      </p>

      {loading ? <p style={{ color: '#94a3b8' }}>Loading…</p> : (
        <>
          {cats.length === 0 && (
            <div style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', padding: 40, textAlign: 'center', color: '#94a3b8' }}>
              No categories yet. Add your first category to customise your expense tracking.
            </div>
          )}

          {grouped.map(({ info, items }) => (
            <div key={info.value} style={{ marginBottom: 28 }}>
              <p style={{ margin: '0 0 10px', fontSize: 12, fontWeight: 700, color: info.color, textTransform: 'uppercase', letterSpacing: 1 }}>
                {info.label}
              </p>
              <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
                {items.map(cat => (
                  <div key={cat.id} style={{ background: '#fff', borderRadius: 12, boxShadow: '0 1px 6px rgba(0,0,0,0.05)', overflow: 'hidden' }}>
                    {/* Parent row */}
                    <div style={{ display: 'flex', alignItems: 'center', padding: '14px 20px', borderBottom: cat.subCategories.length > 0 ? '1px solid #f1f5f9' : 'none' }}>
                      <span style={{ flex: 1, fontWeight: 700, fontSize: 15 }}>{cat.name}</span>
                      <span style={{ padding: '2px 8px', borderRadius: 10, fontSize: 11, fontWeight: 700, background: info.bg, color: info.color, marginRight: 12 }}>
                        {info.label}
                      </span>
                      <button
                        onClick={() => { setEditing(null); setParentId(cat.id); setShowForm(true); }}
                        style={{ ...iconBtn('#10b981'), fontSize: 13, padding: '4px 8px', borderRadius: 6, background: '#f0fdf4', border: '1px solid #bbf7d0', marginRight: 6 }}
                        title="Add sub-category"
                      >
                        + Sub
                      </button>
                      <button onClick={() => { setEditing(cat); setParentId(null); setShowForm(true); }} style={iconBtn('#3b82f6')}>✏️</button>
                      <button onClick={() => handleDelete(cat.id, cat.name)} style={iconBtn('#ef4444')}>🗑️</button>
                    </div>

                    {/* Sub-category rows */}
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
          initial={editing}
          parentId={parentId}
          onClose={() => setShowForm(false)}
          onSaved={() => { setShowForm(false); load(); }}
        />
      )}
    </div>
  );
}

function CategoryForm({
  initial, parentId, onClose, onSaved,
}: {
  initial: Category | null;
  parentId: string | null;
  onClose: () => void;
  onSaved: () => void;
}) {
  const [name, setName]   = useState(initial?.name ?? '');
  const [type, setType]   = useState<number>(initial ? typeVal(initial.type) : 1);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');

  const isSubCategory = !!parentId || !!initial?.parentId;
  const title = isSubCategory
    ? (initial ? 'Edit Sub-category' : 'Add Sub-category')
    : (initial ? 'Edit Category' : 'Add Category');

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    if (!name.trim()) { setError('Name is required'); return; }
    setLoading(true); setError('');
    try {
      const payload: Record<string, unknown> = { name: name.trim(), type };
      if (parentId) payload.parentId = parentId;
      else if (initial?.parentId) payload.parentId = initial.parentId;

      if (initial) {
        await api.put(`/api/categories/${initial.id}`, payload);
      } else {
        const created = await api.post<{ id: string }>('/api/categories', payload);
        // Auto-create "Other" sub-category for new top-level categories
        if (!parentId && created?.id) {
          await api.post('/api/categories', { name: 'Other', type, parentId: created.id });
        }
      }
      onSaved();
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'Failed to save');
    } finally { setLoading(false); }
  }

  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', zIndex: 1000, display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '0 16px' }}>
      <div style={{ background: '#fff', borderRadius: 16, padding: 28, width: '100%', maxWidth: 400, boxShadow: '0 8px 40px rgba(0,0,0,0.15)' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 20 }}>
          <h2 style={{ margin: 0, fontSize: 18, fontWeight: 700 }}>{title}</h2>
          <button onClick={onClose} style={{ border: 'none', background: 'none', cursor: 'pointer', fontSize: 20, color: '#94a3b8' }}>×</button>
        </div>

        <form onSubmit={handleSubmit}>
          <div style={{ marginBottom: 14 }}>
            <label style={labelStyle}>Name</label>
            <input
              style={fieldInput}
              value={name}
              onChange={e => setName(e.target.value)}
              placeholder={isSubCategory ? 'e.g. Restaurant, Petrol' : 'e.g. Food, Transport'}
              required
              autoFocus
            />
          </div>

          {!isSubCategory && (
            <div style={{ marginBottom: 14 }}>
              <label style={labelStyle}>Type</label>
              <div style={{ display: 'flex', gap: 8 }}>
                {CAT_TYPES.map(t => (
                  <button
                    key={t.value}
                    type="button"
                    onClick={() => setType(t.value)}
                    style={{
                      flex: 1, padding: '8px 0', borderRadius: 8, border: `2px solid ${type === t.value ? t.color : '#e2e8f0'}`,
                      background: type === t.value ? t.bg : '#fff',
                      color: type === t.value ? t.color : '#64748b',
                      fontWeight: 600, fontSize: 13, cursor: 'pointer',
                    }}
                  >
                    {t.label}
                  </button>
                ))}
              </div>
            </div>
          )}

          {isSubCategory && (
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
      </div>
    </div>
  );
}

const fieldInput: React.CSSProperties  = { width: '100%', padding: '9px 12px', borderRadius: 8, border: '1px solid #e2e8f0', fontSize: 14, boxSizing: 'border-box', outline: 'none' };
const submitBtn: React.CSSProperties   = { flex: 1, padding: '10px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const addBtnStyle: React.CSSProperties = { padding: '9px 18px', borderRadius: 8, border: 'none', background: '#3b82f6', color: '#fff', fontWeight: 600, fontSize: 14, cursor: 'pointer' };
const labelStyle: React.CSSProperties  = { display: 'block', fontSize: 13, fontWeight: 500, marginBottom: 4, color: '#374151' };
const iconBtn = (color: string): React.CSSProperties => ({ border: 'none', background: 'none', cursor: 'pointer', fontSize: 16, color, marginLeft: 4 });
