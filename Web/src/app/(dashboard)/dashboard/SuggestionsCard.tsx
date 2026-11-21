'use client';

import { useEffect, useState } from 'react';
import { Box, Chip, List, ListItem, ListItemIcon, ListItemText, Paper, Skeleton, Stack, Typography } from '@mui/material';
import { api } from '@/lib/api';

interface Suggestions {
  status: 'ready' | 'not_ready' | 'no_data';
  suggestions: string[];
  message: string | null;
  generatedAt: string | null;
}

/**
 * 3–5 AI tips on this user's spending. The API sends only aggregates to the AI and caches the answer for the day.
 * "Not ready" (no model running yet) is a normal, frequent state: shown as quiet text, never as an error.
 */
export default function SuggestionsCard() {
  const [data, setData] = useState<Suggestions | null>(null);

  useEffect(() => {
    let alive = true;
    api.get<Suggestions>('/api/insights/suggestions')
      .then(d => { if (alive) setData(d); })
      .catch(() => { if (alive) setData({ status: 'not_ready', suggestions: [], message: null, generatedAt: null }); });
    return () => { alive = false; };
  }, []);

  return (
    <Paper variant="outlined" sx={{ p: 2.5, mb: 3, borderRadius: 3 }}>
      <Stack direction="row" sx={{ alignItems: 'center', gap: 1, mb: 0.5 }}>
        <Typography variant="h6" sx={{ fontWeight: 700 }}>Suggestions</Typography>
        <Chip label="AI" size="small" variant="outlined" sx={{ height: 20, fontSize: 11 }} />
      </Stack>
      <Typography variant="caption" color="text.secondary">
        From your last three months of spending · only totals are shared with the AI
      </Typography>

      <Box sx={{ mt: 1.5 }}>
        {data === null ? (
          <Stack spacing={1}>
            <Typography variant="body2" color="text.secondary">Looking at your spending… this can take up to a minute.</Typography>
            <Skeleton variant="text" width="90%" />
            <Skeleton variant="text" width="75%" />
            <Skeleton variant="text" width="82%" />
          </Stack>
        ) : data.status === 'ready' ? (
          <List dense disablePadding>
            {data.suggestions.map((tip, i) => (
              <ListItem key={i} disableGutters sx={{ alignItems: 'flex-start' }}>
                <ListItemIcon sx={{ minWidth: 28, mt: 0.25, color: 'primary.main', fontWeight: 700 }}>{i + 1}.</ListItemIcon>
                <ListItemText primary={tip} slotProps={{ primary: { variant: 'body2' } }} />
              </ListItem>
            ))}
          </List>
        ) : (
          <Typography variant="body2" color="text.secondary">
            {data.message ?? 'AI models are not ready yet. Suggestions will show here once they are.'}
          </Typography>
        )}
      </Box>
    </Paper>
  );
}
