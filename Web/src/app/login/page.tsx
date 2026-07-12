'use client';

import { useState, FormEvent } from 'react';
import { useRouter } from 'next/navigation';
import { setAuth } from '@/stores/auth';

export default function LoginPage() {
  const router = useRouter();
  const [tab, setTab] = useState<'login' | 'register'>('login');
  const [username, setUsername] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const [loading, setLoading] = useState(false);

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
      </div>
    </div>
  );
}
