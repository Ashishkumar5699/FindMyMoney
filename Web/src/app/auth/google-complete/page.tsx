'use client';

import { Suspense, useEffect } from 'react';
import { useRouter, useSearchParams } from 'next/navigation';
import { setAuth } from '@/stores/auth';

function GoogleCompleteInner() {
  const router = useRouter();
  const params = useSearchParams();

  useEffect(() => {
    const token = params.get('t');
    const username = params.get('u') ?? '';
    if (token) {
      setAuth(token, username, '');
      router.replace('/dashboard');
    } else {
      router.replace('/login?error=google_failed');
    }
  }, [params, router]);

  return null;
}

export default function GoogleCompletePage() {
  return (
    <div style={{ minHeight: '100vh', display: 'flex', alignItems: 'center', justifyContent: 'center', background: 'linear-gradient(135deg,#dbeafe 0%,#f8fafc 100%)' }}>
      <p style={{ color: '#64748b', fontSize: 15 }}>Signing you in…</p>
      <Suspense>
        <GoogleCompleteInner />
      </Suspense>
    </div>
  );
}
