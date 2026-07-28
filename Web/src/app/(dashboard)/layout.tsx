'use client';

import { useEffect, useState, ReactNode } from 'react';
import { useRouter, usePathname } from 'next/navigation';
import { getToken, clearAuth, getUser } from '@/stores/auth';

const NAV = [
  { href: '/dashboard', label: 'Dashboard', icon: '📊' },
  { href: '/expenses',  label: 'Expenses',  icon: '💸' },
  { href: '/incomes',   label: 'Incomes',   icon: '💰' },
  { href: '/emis',        label: 'EMIs',        icon: '🏦' },
  { href: '/investments', label: 'Investments', icon: '📈' },
  { href: '/statement',   label: 'Statement',   icon: '📄' },
];

export default function DashboardLayout({ children }: { children: ReactNode }) {
  const router   = useRouter();
  const pathname = usePathname();
  const [sidebarOpen, setSidebarOpen] = useState(false);

  useEffect(() => {
    if (!getToken()) router.replace('/login');
  }, [router]);

  // Close sidebar when navigating
  useEffect(() => { setSidebarOpen(false); }, [pathname]);

  function handleLogout() {
    clearAuth();
    router.replace('/login');
  }

  const user = getUser();

  const isActive = (href: string) =>
    pathname === href || (href !== '/dashboard' && pathname.startsWith(href));

  return (
    <>
      {/* ── Mobile top header ── */}
      <header className="mobile-header">
        <button className="hamburger" onClick={() => setSidebarOpen(o => !o)} aria-label="Menu">
          ☰
        </button>
        <h2>FindMyMoney</h2>
      </header>

      {/* ── Sidebar overlay (mobile) ── */}
      <div
        className={`sidebar-overlay${sidebarOpen ? ' open' : ''}`}
        onClick={() => setSidebarOpen(false)}
      />

      {/* ── Sidebar ── */}
      <aside className={`sidebar${sidebarOpen ? ' open' : ''}`}>
        <div className="sidebar-brand">
          <h2>FindMyMoney</h2>
          {user && <p>{user}</p>}
        </div>

        <nav className="sidebar-nav">
          {NAV.map(n => (
            <a
              key={n.href}
              href={n.href}
              className={`nav-link${isActive(n.href) ? ' active' : ''}`}
            >
              <span>{n.icon}</span>
              <span>{n.label}</span>
            </a>
          ))}
        </nav>

        <div className="sidebar-footer">
          <button className="logout-btn" onClick={handleLogout}>
            <span>🚪</span><span>Logout</span>
          </button>
        </div>
      </aside>

      {/* ── Main content ── */}
      <main className="main-content">
        {children}
      </main>

      {/* ── Mobile bottom nav ── */}
      <nav className="bottom-nav">
        <div className="bottom-nav-inner">
          {NAV.map(n => (
            <a
              key={n.href}
              href={n.href}
              className={`bottom-nav-link${isActive(n.href) ? ' active' : ''}`}
            >
              <span className="icon">{n.icon}</span>
              <span>{n.label}</span>
            </a>
          ))}
        </div>
      </nav>
    </>
  );
}
