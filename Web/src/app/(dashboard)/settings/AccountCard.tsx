'use client';

import { useEffect, useState } from 'react';
import { signIn } from 'next-auth/react';
import {
  Alert, Box, Button, Dialog, DialogActions, DialogContent, DialogContentText, DialogTitle, Paper, Stack, Typography,
} from '@mui/material';
import { api } from '@/lib/api';
import { clearAuth } from '@/stores/auth';

const LINK_RETURN = '/settings?link=google';

type Notice = { severity: 'success' | 'error'; text: string } | null;

/**
 * Sign-in settings: link a Google account (Google sign-in no longer attaches itself to a password account by email),
 * and sign out on every device.
 */
export default function AccountCard() {
  const [notice, setNotice] = useState<Notice>(null);
  const [busy, setBusy] = useState<'link' | 'logout' | null>(null);
  const [confirmOpen, setConfirmOpen] = useState(false);

  // Back from Google with ?link=google: finish linking, then drop the parameter
  useEffect(() => {
    const params = new URLSearchParams(window.location.search);
    if (params.get('link') !== 'google') return;
    window.history.replaceState(null, '', '/settings');
    setBusy('link');
    api.post('/api/auth/google-link', {})
      .then(() => setNotice({ severity: 'success', text: 'Google is linked. You can now sign in with Google too.' }))
      .catch((e: Error) => setNotice({ severity: 'error', text: e.message || 'Linking Google failed.' }))
      .finally(() => setBusy(null));
  }, []);

  async function signOutEverywhere() {
    setBusy('logout');
    try {
      await api.post('/api/auth/logout-all', {});
      clearAuth();
      window.location.href = '/login';
    } catch (e) {
      setNotice({ severity: 'error', text: (e as Error).message || 'Signing out everywhere failed.' });
      setBusy(null);
      setConfirmOpen(false);
    }
  }

  return (
    <Paper variant="outlined" sx={{ p: 2.5, mb: 3, borderRadius: 3 }}>
      <Typography variant="h6" sx={{ fontWeight: 700, mb: 0.5 }}>Account</Typography>
      <Typography variant="body2" color="text.secondary" sx={{ mb: 2 }}>
        How you sign in, and the devices that are signed in.
      </Typography>

      {notice && <Alert severity={notice.severity} sx={{ mb: 2 }} onClose={() => setNotice(null)}>{notice.text}</Alert>}

      <Stack spacing={2}>
        <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', gap: 2, flexWrap: 'wrap' }}>
          <Box>
            <Typography sx={{ fontWeight: 600 }}>Google sign-in</Typography>
            <Typography variant="body2" color="text.secondary">
              Link your Google account to sign in with it as well as your password.
            </Typography>
          </Box>
          <Button
            variant="outlined"
            disabled={busy !== null}
            onClick={async () => { setBusy('link'); await signIn('google', { callbackUrl: LINK_RETURN }); }}
          >
            {busy === 'link' ? 'Linking…' : 'Link Google'}
          </Button>
        </Box>

        <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', gap: 2, flexWrap: 'wrap' }}>
          <Box>
            <Typography sx={{ fontWeight: 600 }}>Sign out everywhere</Typography>
            <Typography variant="body2" color="text.secondary">
              Ends every session, including this one, the app and the fmm CLI. Use it if a device is lost.
            </Typography>
          </Box>
          <Button variant="outlined" color="error" disabled={busy !== null} onClick={() => setConfirmOpen(true)}>
            Sign out everywhere
          </Button>
        </Box>
      </Stack>

      <Dialog open={confirmOpen} onClose={() => busy === null && setConfirmOpen(false)}>
        <DialogTitle>Sign out everywhere?</DialogTitle>
        <DialogContent>
          <DialogContentText>
            Every device and the fmm CLI will need to sign in again, including this browser.
          </DialogContentText>
        </DialogContent>
        <DialogActions>
          <Button onClick={() => setConfirmOpen(false)} disabled={busy !== null}>Cancel</Button>
          <Button color="error" variant="contained" onClick={signOutEverywhere} disabled={busy !== null}>
            {busy === 'logout' ? 'Signing out…' : 'Sign out everywhere'}
          </Button>
        </DialogActions>
      </Dialog>
    </Paper>
  );
}
