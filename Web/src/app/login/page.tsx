'use client';

import { useState, FormEvent } from 'react';
import { useRouter, useSearchParams } from 'next/navigation';
import { setAuth } from '@/stores/auth';
import { signIn } from 'next-auth/react';

export default function LoginPage() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const [tab, setTab] = useState<'login' | 'register'>('login');
  const [username, setUsername] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState(searchParams.get('error') === 'google_failed' ? 'Google sign-in failed. Please try again.' : '');
  const [loading, setLoading] = useState(false);
  const [googleLoading, setGoogleLoading] = useState(false);

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setError('');
    setLoading(true);
    try {
      const path = tab === 'login' ? '/api/auth/login' : '/api/auth/register';
      const body = tab === 'login'
        ? { username, password }
        : { username, email, password };

      const res = await fetch(path, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(body),
      });
      const json = await res.json();
      if (!res.ok) throw new Error(json?.message ?? 'Failed');

      const payload = json?.data ?? json;
      const token = payload?.token ?? payload?.data?.token;
      const userName = payload?.userName ?? payload?.data?.userName ?? email;
      const accountId = payload?.accountId ?? payload?.data?.accountId ?? '';

      if (!token) throw new Error('No token returned');
      setAuth(token, userName, accountId);
      router.replace('/dashboard');
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'Something went wrong');
    } finally {
      setLoading(false);
    }
  }

  const inputStyle: React.CSSProperties = {
    width: '100%', padding: '10px 12px', borderRadius: 8,
    border: '1px solid #cbd5e1', fontSize: 15, boxSizing: 'border-box',
    outline: 'none', marginBottom: 12,
  };
  const btnStyle: React.CSSProperties = {
    width: '100%', padding: '11px', borderRadius: 8, border: 'none',
    background: '#3b82f6', color: '#fff', fontSize: 15, fontWeight: 600,
    cursor: loading ? 'not-allowed' : 'pointer', opacity: loading ? 0.7 : 1,
  };

  return (
    <div style={{ minHeight: '100vh', display: 'flex', alignItems: 'center', justifyContent: 'center', background: 'linear-gradient(135deg,#dbeafe 0%,#f8fafc 100%)' }}>
      <div style={{ background: '#fff', borderRadius: 16, padding: '36px 32px', width: 360, boxShadow: '0 4px 24px rgba(0,0,0,0.08)' }}>
        <h1 style={{ margin: '0 0 4px', fontSize: 24, fontWeight: 700 }}>FindMyMoney</h1>
        <p style={{ margin: '0 0 24px', color: '#64748b', fontSize: 14 }}>Personal finance tracker</p>

        <div style={{ display: 'flex', marginBottom: 24, background: '#f1f5f9', borderRadius: 8, padding: 4 }}>
          {(['login', 'register'] as const).map(t => (
            <button
              key={t}
              onClick={() => setTab(t)}
              style={{
                flex: 1, padding: '7px 0', border: 'none', borderRadius: 6, cursor: 'pointer',
                background: tab === t ? '#fff' : 'transparent',
                fontWeight: tab === t ? 600 : 400, fontSize: 14,
                boxShadow: tab === t ? '0 1px 4px rgba(0,0,0,0.08)' : 'none',
              }}
            >
              {t === 'login' ? 'Sign In' : 'Sign Up'}
            </button>
          ))}
        </div>

        <form onSubmit={handleSubmit}>
          <input style={inputStyle} placeholder="Username" value={username} onChange={e => setUsername(e.target.value)} required />
          {tab === 'register' && (
            <input style={inputStyle} type="email" placeholder="Email" value={email} onChange={e => setEmail(e.target.value)} required />
          )}
          <input style={inputStyle} type="password" placeholder="Password" value={password} onChange={e => setPassword(e.target.value)} required />
          {error && <p style={{ color: '#ef4444', fontSize: 13, margin: '-4px 0 12px' }}>{error}</p>}
          <button type="submit" style={btnStyle} disabled={loading}>
            {loading ? 'Please wait…' : tab === 'login' ? 'Sign In' : 'Create Account'}
          </button>
        </form>

        <div style={{ display: 'flex', alignItems: 'center', gap: 12, margin: '20px 0' }}>
          <div style={{ flex: 1, height: 1, background: '#e2e8f0' }} />
          <span style={{ color: '#94a3b8', fontSize: 12 }}>OR</span>
          <div style={{ flex: 1, height: 1, background: '#e2e8f0' }} />
        </div>

        <button
          onClick={async () => { setGoogleLoading(true); await signIn('google', { callbackUrl: '/api/auth/google-finalize' }); }}
          disabled={googleLoading}
          style={{
            width: '100%', padding: '11px', borderRadius: 8, border: '1px solid #e2e8f0',
            background: '#fff', color: '#1e293b', fontSize: 14, fontWeight: 600,
            cursor: googleLoading ? 'not-allowed' : 'pointer', opacity: googleLoading ? 0.7 : 1,
            display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 10,
          }}
        >
          <GoogleIcon />
          {googleLoading ? 'Redirecting…' : 'Continue with Google'}
        </button>
      </div>
    </div>
  );
}

function GoogleIcon() {
  return (
    <svg width="18" height="18" viewBox="0 0 24 24">
      <path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
      <path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
      <path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"/>
      <path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/>
    </svg>
  );
}
