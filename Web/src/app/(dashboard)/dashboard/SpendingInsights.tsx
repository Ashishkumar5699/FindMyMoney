'use client';

import { useEffect, useMemo, useState } from 'react';
import {
  Box, Button, Card, CardContent, Collapse, Grid, LinearProgress, List, ListItemButton, Paper, Skeleton, Stack,
  Table, TableBody, TableCell, TableHead, TableRow, ToggleButton, ToggleButtonGroup, Typography,
} from '@mui/material';
import { BarChart } from '@mui/x-charts/BarChart';
import { api } from '@/lib/api';
import { isCardBillPayment } from '@/lib/finance';

interface Expense { id: string; amount: number; category: string; description: string | null; date: string; }
type Month = { key: string; label: string; year: number; month: number };

const BAR = '#2a78d6';
const BAR_SOFT = '#86b6ef';

const fmt = (n: number) => `₹${Math.round(n).toLocaleString('en-IN')}`;
const compact = (n: number) =>
  n >= 100000 ? `₹${(n / 100000).toFixed(1)}L` : n >= 1000 ? `₹${Math.round(n / 1000)}k` : `₹${Math.round(n)}`;
const parentOf = (c: string) => c.split(' / ')[0].trim() || 'Other';
const subOf = (c: string) => c.split(' / ')[1]?.trim() || 'General';

// Last `count` complete months, oldest first — the current month is still filling up.
function lastMonths(count: number): Month[] {
  const now = new Date();
  return Array.from({ length: count }, (_, i) => {
    const d = new Date(now.getFullYear(), now.getMonth() - count + i, 1);
    return { key: `${d.getFullYear()}-${d.getMonth() + 1}`, label: d.toLocaleString('en-IN', { month: 'short' }), year: d.getFullYear(), month: d.getMonth() + 1 };
  });
}

export default function SpendingInsights() {
  const [range, setRange] = useState(3);
  const [byMonth, setByMonth] = useState<Record<string, Expense[]>>({});
  const [loading, setLoading] = useState(true);
  const [focus, setFocus] = useState<string | null>(null);
  const [open, setOpen] = useState<string | null>(null);

  const months = useMemo(() => lastMonths(range), [range]);

  useEffect(() => {
    let alive = true;
    setLoading(true);
    setFocus(null);
    Promise.all(months.map(m =>
      api.get<Expense[]>(`/api/expenses?year=${m.year}&month=${m.month}`)
        .then(rows => [m.key, (rows ?? []).filter(e => !isCardBillPayment(e))] as const)
        .catch(() => [m.key, [] as Expense[]] as const),
    )).then(entries => { if (alive) { setByMonth(Object.fromEntries(entries)); setLoading(false); } });
    return () => { alive = false; };
  }, [months]);

  const totals = months.map(m => ({ ...m, total: (byMonth[m.key] ?? []).reduce((s, e) => s + e.amount, 0) }));
  const grandTotal = totals.reduce((s, m) => s + m.total, 0);
  const scope = useMemo(
    () => (focus ? byMonth[focus] ?? [] : months.flatMap(m => byMonth[m.key] ?? [])),
    [focus, byMonth, months],
  );
  const scopeTotal = scope.reduce((s, e) => s + e.amount, 0);

  const categories = useMemo(() => {
    const map = new Map<string, { total: number; subs: Map<string, number> }>();
    for (const e of scope) {
      const p = parentOf(e.category);
      const entry = map.get(p) ?? { total: 0, subs: new Map<string, number>() };
      entry.total += e.amount;
      entry.subs.set(subOf(e.category), (entry.subs.get(subOf(e.category)) ?? 0) + e.amount);
      map.set(p, entry);
    }
    return [...map.entries()]
      .map(([name, v]) => ({ name, total: v.total, subs: [...v.subs.entries()].sort((a, b) => b[1] - a[1]) }))
      .sort((a, b) => b.total - a.total);
  }, [scope]);

  const merchants = useMemo(() => {
    const map = new Map<string, { total: number; count: number }>();
    for (const e of scope) {
      if (['EMI', 'SIP'].includes(parentOf(e.category)) || !e.description) continue;
      const m = map.get(e.description) ?? { total: 0, count: 0 };
      m.total += e.amount; m.count += 1;
      map.set(e.description, m);
    }
    return [...map.entries()].sort((a, b) => b[1].total - a[1].total).slice(0, 8);
  }, [scope]);

  const emi = categories.find(c => c.name === 'EMI')?.total ?? 0;
  const top = categories[0];
  const focusLabel = focus ? totals.find(m => m.key === focus)?.label : null;
  const last = months[months.length - 1];
  const pct = (v: number, of: number) => `${Math.round((100 * v) / (of || 1))}%`;

  return (
    <Box component="section" sx={{ mb: 3 }}>
      <Stack direction="row" sx={{ alignItems: 'center', justifyContent: 'space-between', flexWrap: 'wrap', gap: 1.5, mb: 2 }}>
        <Box>
          <Typography variant="h6" sx={{ fontWeight: 700 }}>Spending insights</Typography>
          <Typography variant="caption" color="text.secondary">
            {months[0].label} – {last.label} {last.year} · card bill payments left out so nothing counts twice
          </Typography>
        </Box>
        <ToggleButtonGroup size="small" exclusive value={range} onChange={(_, v) => v && setRange(v)} aria-label="Range">
          {[3, 6, 12].map(n => <ToggleButton key={n} value={n}>{n} months</ToggleButton>)}
        </ToggleButtonGroup>
      </Stack>

      {loading ? (
        <Stack spacing={2}>
          <Skeleton variant="rounded" height={90} />
          <Skeleton variant="rounded" height={280} />
        </Stack>
      ) : (
        <>
          <Grid container spacing={2} sx={{ mb: 2 }}>
            <Stat label="Total spent" value={fmt(grandTotal)} sub={`${range} months`} />
            <Stat label="Monthly average" value={fmt(grandTotal / range)} sub="per month" />
            <Stat label="Top category" value={top?.name ?? '—'} sub={top ? `${fmt(top.total)} · ${pct(top.total, scopeTotal)}` : ''} />
            <Stat label="EMIs" value={fmt(emi)} sub={`${pct(emi, scopeTotal)} of spending${focusLabel ? ` in ${focusLabel}` : ''}`} />
          </Grid>

          <Paper sx={{ p: 2.5, mb: 2 }}>
            <Stack direction="row" sx={{ justifyContent: 'space-between', alignItems: 'center' }}>
              <Typography variant="subtitle1" sx={{ fontWeight: 600 }}>Spending per month</Typography>
              {focus
                ? <Button size="small" onClick={() => setFocus(null)}>Show all months</Button>
                : <Typography variant="caption" color="text.secondary">Click a bar to focus on that month</Typography>}
            </Stack>
            <BarChart
              height={260}
              xAxis={[{ scaleType: 'band', data: totals.map(t => t.label), categoryGapRatio: range === 3 ? 0.55 : 0.35 }]}
              yAxis={[{ valueFormatter: (v: number) => compact(v), width: 56 }]}
              series={[{
                data: totals.map(t => t.total), label: 'Spent', color: BAR, valueFormatter: v => fmt(v ?? 0),
                barLabel: range <= 6 ? item => compact(item.value ?? 0) : undefined, barLabelPlacement: 'outside',
              }]}
              borderRadius={4}
              hideLegend
              grid={{ horizontal: true }}
              onItemClick={(_, item) => {
                const key = totals[item.dataIndex]?.key;
                if (key) setFocus(f => (f === key ? null : key));
              }}
              margin={{ left: 8, right: 8, top: 28, bottom: 8 }}
            />
          </Paper>

          <Grid container spacing={2}>
            <Grid size={{ xs: 12, md: 6 }}>
              <Paper sx={{ p: 2.5, height: '100%' }}>
                <Typography variant="subtitle1" sx={{ fontWeight: 600 }}>By category{focusLabel ? ` · ${focusLabel}` : ''}</Typography>
                <Typography variant="caption" color="text.secondary">Click a category to see its sub-categories</Typography>
                <List dense disablePadding sx={{ mt: 1.5 }}>
                  {categories.map(c => (
                    <Box key={c.name}>
                      <ListItemButton onClick={() => setOpen(open === c.name ? null : c.name)} sx={{ px: 1, borderRadius: 1, display: 'block' }} aria-expanded={open === c.name}>
                        <Amount label={`${open === c.name ? '▾' : '▸'} ${c.name}`} value={c.total} share={pct(c.total, scopeTotal)} ratio={c.total / categories[0].total} color={BAR} strong />
                      </ListItemButton>
                      <Collapse in={open === c.name} unmountOnExit>
                        <Box sx={{ pl: 3.5, pr: 1, pb: 1 }}>
                          {c.subs.map(([s, v]) => (
                            <Amount key={s} label={s} value={v} share={`${pct(v, c.total)} of ${c.name}`} ratio={v / c.total} color={BAR_SOFT} />
                          ))}
                        </Box>
                      </Collapse>
                    </Box>
                  ))}
                  {categories.length === 0 && <Typography color="text.secondary" variant="body2">No spending in this period</Typography>}
                </List>
              </Paper>
            </Grid>

            <Grid size={{ xs: 12, md: 6 }}>
              <Paper sx={{ p: 2.5, height: '100%' }}>
                <Typography variant="subtitle1" sx={{ fontWeight: 600 }}>Top merchants{focusLabel ? ` · ${focusLabel}` : ''}</Typography>
                <Typography variant="caption" color="text.secondary">Where the money went (EMIs and SIP left out)</Typography>
                <Table size="small" sx={{ mt: 1 }}>
                  <TableHead>
                    <TableRow>
                      <TableCell>Merchant</TableCell>
                      <TableCell align="right">Times</TableCell>
                      <TableCell align="right">Spent</TableCell>
                    </TableRow>
                  </TableHead>
                  <TableBody>
                    {merchants.map(([name, m]) => (
                      <TableRow key={name} hover>
                        <TableCell sx={{ maxWidth: 220, overflow: 'hidden', textOverflow: 'ellipsis', whiteSpace: 'nowrap' }}>{name}</TableCell>
                        <TableCell align="right" sx={{ color: 'text.secondary' }}>{m.count}</TableCell>
                        <TableCell align="right" sx={{ fontWeight: 600 }}>{fmt(m.total)}</TableCell>
                      </TableRow>
                    ))}
                    {merchants.length === 0 && (
                      <TableRow><TableCell colSpan={3} sx={{ color: 'text.secondary' }}>No merchant spends in this period</TableCell></TableRow>
                    )}
                  </TableBody>
                </Table>
              </Paper>
            </Grid>
          </Grid>
        </>
      )}
    </Box>
  );
}

function Stat({ label, value, sub }: { label: string; value: string; sub: string }) {
  return (
    <Grid size={{ xs: 6, md: 3 }}>
      <Card sx={{ height: '100%' }}>
        <CardContent>
          <Typography variant="caption" color="text.secondary" sx={{ fontWeight: 500 }}>{label}</Typography>
          <Typography variant="h6" noWrap sx={{ fontWeight: 700 }}>{value}</Typography>
          <Typography variant="caption" color="text.secondary">{sub}</Typography>
        </CardContent>
      </Card>
    </Grid>
  );
}

function Amount({ label, value, share, ratio, color, strong }: {
  label: string; value: number; share: string; ratio: number; color: string; strong?: boolean;
}) {
  return (
    <Box sx={{ py: 0.5 }}>
      <Stack direction="row" sx={{ justifyContent: 'space-between', mb: 0.5 }}>
        <Typography variant="body2" sx={{ fontWeight: strong ? 600 : 400 }}>{label}</Typography>
        <Typography variant="body2" color="text.secondary">
          {fmt(value)} <Typography component="span" variant="caption" color="text.disabled">· {share}</Typography>
        </Typography>
      </Stack>
      <LinearProgress
        variant="determinate"
        value={Math.min(100, ratio * 100)}
        sx={{ height: strong ? 8 : 6, borderRadius: 4, bgcolor: '#f1f5f9', '& .MuiLinearProgress-bar': { bgcolor: color, borderRadius: 4 } }}
      />
    </Box>
  );
}
