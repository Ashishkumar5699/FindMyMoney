'use client';

import { useEffect, ReactNode } from 'react';
import { useRouter, usePathname } from 'next/navigation';
import { getToken, clearAuth, getUser } from '@/stores/auth';

const NAV = [
  { href: '/dashboard', label: 'Dashboard', icon: '📊' },
  { href: '/expenses', label: 'Expenses', icon: '💸' },
  { href: '/incomes', label: 'Incomes', icon: '💰' },
  { href: '/emis', label: 'EMIs', icon: '🏦' },
  { href: '/statement', label: 'Statement', icon: '📄' },
];

export default function DashboardLayout({ children }: { children: ReactNode }) {
  const router = useRouter();
  const pathname = usePathname();

  useEffect(() => {
    if (!getToken()) router.replace('/login');
  }, [router]);

  function handleLogout() {
    clearAuth();
    router.replace('/login');
  }

  const user = getUser();

  return (
    <div style={{ display: 'flex', minHeight: '100vh' }}>
      <aside style={{
        position: 'fixed', top: 0, left: 0, bottom: 0, width: 220,
        background: '#1e293b', color: '#f1f5f9', display: 'flex', flexDirection: 'column',
        padding: '24px 0', zIndex: 100,
      }}>
        <div style={{ padding: '0 20px 24px', borderBottom: '1px solid #334155' }}>
          <div style={{ fontWeight: 700, fontSize: 18 }}>FindMyMoney</div>
          {user && <div style={{ fontSize: 12, color: '#94a3b8', marginTop: 4 }}>{user}</div>}
        </div>

        <nav style={{ flex: 1, padding: '16px 0' }}>
          {NAV.map(n => {
            const active = pathname === n.href || (n.href !== '/dashboard' && pathname.startsWith(n.href));
            return (
              <a
                key={n.href}
                href={n.href}
                style={{
                  display: 'flex', alignItems: 'center', gap: 10,
                  padding: '10px 20px', textDecoration: 'none',
                  color: active ? '#fff' : '#94a3b8',
                  background: active ? '#3b82f6' : 'transparent',
                  margin: '2px 8px', borderRadius: 8, fontSize: 14, fontWeight: active ? 600 : 400,
                  transition: 'background 0.15s',
                }}
              >
                <span>{n.icon}</span>
                <span>{n.label}</span>
              </a>
            );
          })}
        </nav>

        <div style={{ padding: '16px 8px 0', borderTop: '1px solid #334155' }}>
          <button
            onClick={handleLogout}
            style={{
              width: '100%', padding: '10px 20px', border: 'none', borderRadius: 8,
              background: 'transparent', color: '#f87171', cursor: 'pointer',
              textAlign: 'left', fontSize: 14, display: 'flex', alignItems: 'center', gap: 10,
            }}
          >
            <span>🚪</span><span>Logout</span>
          </button>
        </div>
      </aside>

      <main style={{ marginLeft: 220, flex: 1, padding: '32px', minHeight: '100vh' }}>
        {children}
      </main>
    </div>
  );
}
