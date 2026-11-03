'use client';

import { useCallback, useEffect, useMemo, useState } from 'react';
import {
  Alert, Autocomplete, Box, Button, Chip, Dialog, DialogActions, DialogContent, DialogTitle, LinearProgress,
  Paper, Skeleton, Stack, TextField, Typography,
} from '@mui/material';
import { api } from '@/lib/api';
import { budgetCovers, isCardBillPayment } from '@/lib/finance';

interface Budget { id: string; name: string; monthlyLimit: number; categories: string[]; }
interface Expense { id: string; amount: number; category: string; description: string | null; date: string; paymentSourceId: string | null; isVirtual: boolean; }
interface Emi { id: string; loanName: string; bankName: string; emiAmount: number; startDate: string; }
interface Source { id: string; name: string; type: string; }
interface Category { name: string; subCategories: Category[]; }
type Draft = { id?: string; name: string; monthlyLimit: string; categories: string[] };

const PRESETS: Omit<Draft, 'id'>[] = [
  { name: 'Shopping & fun', monthlyLimit: '10000', categories: ['Shopping', 'Entertainment'] },
  { name: 'Eating out & BKC', monthlyLimit: '9000', categories: ['Food / Outsite', 'BKC'] },
];

const fmt = (n: number) => `₹${Math.round(n).toLocaleString('en-IN')}`;

function status(spent: number, limit: number) {
  const ratio = spent / (limit || 1);
  if (ratio > 1) return { color: 'error' as const, label: `Over by ${fmt(spent - limit)}` };
  if (ratio >= 0.8) return { color: 'warning' as const, label: 'Near limit' };
  return { color: 'success' as const, label: 'On track' };
}

export default function BudgetsCard() {
  const now = new Date();
  const year = now.getFullYear(), month = now.getMonth() + 1;
  const daysLeft = new Date(year, month, 0).getDate() - now.getDate() + 1;

  const [budgets, setBudgets] = useState<Budget[]>([]);
  const [expenses, setExpenses] = useState<Expense[]>([]);
  const [emis, setEmis] = useState<Emi[]>([]);
  const [sources, setSources] = useState<Source[]>([]);
  const [categoryOptions, setCategoryOptions] = useState<string[]>([]);
  const [loading, setLoading] = useState(true);
  const [draft, setDraft] = useState<Draft | null>(null);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const load = useCallback(async () => {
    const [b, e, em, s, c] = await Promise.all([
      api.get<Budget[]>('/api/budgets').catch(() => [] as Budget[]),
      api.get<Expense[]>(`/api/expenses?year=${year}&month=${month}`).catch(() => [] as Expense[]),
      api.get<Emi[]>('/api/emis?status=Active').catch(() => [] as Emi[]),
      api.get<Source[]>('/api/payment-sources').catch(() => [] as Source[]),
      api.get<Category[]>('/api/categories?type=1').catch(() => [] as Category[]),
    ]);
    setBudgets(b ?? []);
    setExpenses(e ?? []);
    setEmis(em ?? []);
    setSources(s ?? []);
    const names = new Set<string>();
    for (const p of c ?? []) { names.add(p.name); for (const sub of p.subCategories ?? []) names.add(`${p.name} / ${sub.name}`); }
    for (const x of e ?? []) { names.add(x.category); names.add(x.category.split(' / ')[0]); }
    PRESETS.forEach(p => p.categories.forEach(n => names.add(n)));
    names.delete('Credit Card Bill');
    setCategoryOptions([...names].sort());
    setLoading(false);
  }, [year, month]);

  useEffect(() => { load(); }, [load]);

  const spending = useMemo(() => expenses.filter(e => !isCardBillPayment(e)), [expenses]);
  const spentOn = (b: Budget) => spending.filter(e => budgetCovers(b.categories, e.category)).reduce((s, e) => s + e.amount, 0);

  const warnings = useMemo(() => {
    const out: string[] = [];
    for (const e of emis) {
      const d = new Date(e.startDate);
      if (d.getFullYear() === year && d.getMonth() + 1 === month)
        out.push(`New EMI started this month: ${e.loanName} (${e.bankName}) — ${fmt(e.emiAmount)}/month. The plan is no new EMIs.`);
    }
    const cards = new Map(sources.filter(s => s.type === 'CreditCard').map(s => [s.id, s.name]));
    for (const e of expenses) {
      const paidByCard = isCardBillPayment(e) && e.paymentSourceId && cards.has(e.paymentSourceId);
      const billOnCard = e.isVirtual && /card bill/i.test(e.description ?? '');
      if (paidByCard || billOnCard)
        out.push(`A card bill of ${fmt(e.amount)} was paid with ${cards.get(e.paymentSourceId ?? '') ?? 'a credit card'}. Pay card bills from your bank account.`);
    }
    return out;
  }, [emis, expenses, sources, year, month]);

  async function save() {
    if (!draft) return;
    const body = { name: draft.name.trim(), monthlyLimit: Number(draft.monthlyLimit), categories: draft.categories };
    if (!body.name || !(body.monthlyLimit > 0) || body.categories.length === 0) {
      setError('Give it a name, a limit above ₹0 and at least one category.');
      return;
    }
    setSaving(true);
    setError(null);
    try {
      if (draft.id) await api.put(`/api/budgets/${draft.id}`, body);
      else await api.post('/api/budgets', body);
      setDraft(null);
      await load();
    } catch (e) {
      setError((e as Error).message);
    } finally {
      setSaving(false);
    }
  }

  async function remove() {
    if (!draft?.id) return;
    setSaving(true);
    try { await api.delete(`/api/budgets/${draft.id}`); setDraft(null); await load(); }
    catch (e) { setError((e as Error).message); }
    finally { setSaving(false); }
  }

  async function addPreset(p: Omit<Draft, 'id'>) {
    await api.post('/api/budgets', { name: p.name, monthlyLimit: Number(p.monthlyLimit), categories: p.categories });
    await load();
  }

  const missingPresets = PRESETS.filter(p => !budgets.some(b => b.name.toLowerCase() === p.name.toLowerCase()));

  return (
    <Paper sx={{ p: 2.5, mb: 3 }}>
      <Stack direction="row" sx={{ justifyContent: 'space-between', alignItems: 'center', mb: 1.5 }}>
        <Box>
          <Typography variant="subtitle1" sx={{ fontWeight: 600 }}>This month&apos;s budgets</Typography>
          <Typography variant="caption" color="text.secondary">{daysLeft} day{daysLeft === 1 ? '' : 's'} left in {now.toLocaleString('en-IN', { month: 'long' })}</Typography>
        </Box>
        <Button size="small" variant="outlined" onClick={() => { setError(null); setDraft({ name: '', monthlyLimit: '', categories: [] }); }}>Add budget</Button>
      </Stack>

      {loading ? <Skeleton variant="rounded" height={90} /> : (
        <Stack spacing={1.5}>
          {warnings.map(w => <Alert key={w} severity="warning" variant="outlined">{w}</Alert>)}

          {budgets.map(b => {
            const spent = spentOn(b);
            const st = status(spent, b.monthlyLimit);
            const left = b.monthlyLimit - spent;
            return (
              <Box key={b.id} role="button" tabIndex={0} aria-label={`Edit ${b.name}`}
                onClick={() => { setError(null); setDraft({ id: b.id, name: b.name, monthlyLimit: String(b.monthlyLimit), categories: b.categories }); }}
                onKeyDown={e => { if (e.key === 'Enter') setDraft({ id: b.id, name: b.name, monthlyLimit: String(b.monthlyLimit), categories: b.categories }); }}
                sx={{ p: 1.5, borderRadius: 2, border: '1px solid', borderColor: 'divider', cursor: 'pointer', '&:hover': { bgcolor: 'action.hover' } }}>
                <Stack direction="row" sx={{ justifyContent: 'space-between', alignItems: 'center', mb: 0.75, gap: 1 }}>
                  <Typography variant="body2" sx={{ fontWeight: 600 }}>{b.name}</Typography>
                  <Chip size="small" color={st.color} variant="outlined" label={st.label} />
                </Stack>
                <LinearProgress variant="determinate" color={st.color} value={Math.min(100, (100 * spent) / b.monthlyLimit)} sx={{ height: 8, borderRadius: 4, mb: 0.75, bgcolor: '#eef2f6' }} />
                <Stack direction="row" sx={{ justifyContent: 'space-between', flexWrap: 'wrap', gap: 1 }}>
                  <Typography variant="caption" color="text.secondary">
                    {fmt(spent)} of {fmt(b.monthlyLimit)} · {b.categories.join(', ')}
                  </Typography>
                  <Typography variant="caption" color="text.secondary">
                    {left > 0 ? `${fmt(left)} left · ${fmt(left / daysLeft)}/day` : 'Limit reached'}
                  </Typography>
                </Stack>
              </Box>
            );
          })}

          {missingPresets.length > 0 && (
            <Box>
              <Typography variant="caption" color="text.secondary">
                {budgets.length === 0 ? 'No budgets yet. Start with your plan:' : 'Also in your plan:'}
              </Typography>
              <Stack direction="row" sx={{ flexWrap: 'wrap', gap: 1, mt: 0.75 }}>
                {missingPresets.map(p => (
                  <Chip key={p.name} clickable onClick={() => addPreset(p)} label={`+ ${p.name} · ${fmt(Number(p.monthlyLimit))}`} />
                ))}
              </Stack>
            </Box>
          )}
        </Stack>
      )}

      <Dialog open={!!draft} onClose={() => !saving && setDraft(null)} fullWidth maxWidth="xs">
        <DialogTitle>{draft?.id ? 'Edit budget' : 'New budget'}</DialogTitle>
        <DialogContent>
          <Stack spacing={2} sx={{ mt: 1 }}>
            <TextField label="Name" value={draft?.name ?? ''} onChange={e => setDraft(d => d && { ...d, name: e.target.value })} autoFocus />
            <TextField label="Monthly limit (₹)" type="number" value={draft?.monthlyLimit ?? ''}
              onChange={e => setDraft(d => d && { ...d, monthlyLimit: e.target.value })} slotProps={{ htmlInput: { min: 1 } }} />
            <Autocomplete multiple freeSolo options={categoryOptions} value={draft?.categories ?? []}
              onChange={(_, v) => setDraft(d => d && { ...d, categories: v as string[] })}
              renderInput={params => <TextField {...params} label="Categories" helperText="A main category also covers its sub-categories" />} />
            {error && <Alert severity="error">{error}</Alert>}
          </Stack>
        </DialogContent>
        <DialogActions>
          {draft?.id && <Button color="error" onClick={remove} disabled={saving} sx={{ mr: 'auto' }}>Delete</Button>}
          <Button onClick={() => setDraft(null)} disabled={saving}>Cancel</Button>
          <Button variant="contained" onClick={save} disabled={saving}>{saving ? 'Saving…' : 'Save'}</Button>
        </DialogActions>
      </Dialog>
    </Paper>
  );
}
