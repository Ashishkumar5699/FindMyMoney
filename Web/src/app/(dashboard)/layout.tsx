'use client';

import { useEffect, useState, ReactNode } from 'react';
import { useRouter, usePathname } from 'next/navigation';
import { getToken, clearAuth, getUser } from '@/stores/auth';
import { api } from '@/lib/api';

const NAV = [
  { href: '/dashboard',        label: 'Dashboard',       icon: '📊' },
  { href: '/expenses',         label: 'Expenses',        icon: '💸' },
  { href: '/incomes',          label: 'Incomes',         icon: '💰' },
  { href: '/emis',             label: 'EMIs',            icon: '🏦' },
  { href: '/investments',      label: 'Investments',     icon: '📈' },
  { href: '/cc-bills',         label: 'CC Bills',        icon: '🧾' },
  { href: '/transfers',        label: 'Transfers',       icon: '🔄' },
  { href: '/loans',            label: 'Loans',           icon: '🤝' },
  { href: '/categories',       label: 'Categories',      icon: '🏷️' },
  { href: '/payment-sources',  label: 'Payment Sources', icon: '💳' },
  { href: '/statement',        label: 'Statement',       icon: '📄' },
];

interface PaymentSource {
  id: string; name: string; type: string;
  billingCycleDay?: number; isActive: boolean;
}

export default function DashboardLayout({ children }: { children: ReactNode }) {
  const router   = useRouter();
  const pathname = usePathname();
  const [sidebarOpen, setSidebarOpen] = useState(false);
  const [billingToday, setBillingToday] = useState<PaymentSource[]>([]);
  const [dismissed, setDismissed] = useState(false);

  useEffect(() => {
    if (!getToken()) router.replace('/login');
  }, [router]);

  // Check billing cycle notifications on mount
  useEffect(() => {
    if (!getToken()) return;
    const today = new Date().getDate();
    api.get<PaymentSource[]>('/api/payment-sources').then(sources => {
      const due = (sources ?? []).filter(
        s => s.isActive && s.type === 'CreditCard' && s.billingCycleDay === today
      );
      if (due.length === 0) return;
      setBillingToday(due);

      // Browser notification (best-effort)
      if (typeof window !== 'undefined' && 'Notification' in window) {
        const send = () => {
          due.forEach(card => {
            new Notification('💳 CC Bill Due Today', {
              body: `${card.name} billing cycle closes today — add your bill on CC Bills page.`,
              icon: '/favicon.ico',
            });
          });
        };
        if (Notification.permission === 'granted') {
          send();
        } else if (Notification.permission !== 'denied') {
          Notification.requestPermission().then(p => { if (p === 'granted') send(); });
        }
      }
    }).catch(() => {});
  }, []);

  // Close sidebar when navigating
  useEffect(() => { setSidebarOpen(false); }, [pathname]);

  function handleLogout() {
    clearAuth();
    router.replace('/login');
  }

  const user = getUser();

  const isActiveLink = (href: string) =>
    pathname === href || (href !== '/dashboard' && pathname.startsWith(href));

  return (
    <>
      {/* ── Billing cycle reminder banner ── */}
      {billingToday.length > 0 && !dismissed && (
        <div style={{
          position: 'fixed', top: 0, left: 0, right: 0, zIndex: 2000,
          background: '#f59e0b', color: '#1c1917', padding: '10px 20px',
          display: 'flex', alignItems: 'center', justifyContent: 'space-between', gap: 12,
          boxShadow: '0 2px 8px rgba(0,0,0,0.15)',
        }}>
          <span style={{ fontSize: 14, fontWeight: 600 }}>
            💳 {billingToday.map(c => c.name).join(', ')} billing cycle closes today — <a href="/cc-bills" style={{ color: '#1c1917', textDecoration: 'underline' }}>generate your CC bill</a>
          </span>
          <button
            onClick={() => setDismissed(true)}
            style={{ border: 'none', background: 'rgba(0,0,0,0.15)', borderRadius: 6, cursor: 'pointer', fontWeight: 700, padding: '2px 8px', color: '#1c1917' }}
          >
            ✕
          </button>
        </div>
      )}

      {/* ── Mobile top header ── */}
      <header className="mobile-header" style={billingToday.length > 0 && !dismissed ? { marginTop: 40 } : {}}>
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
              className={`nav-link${isActiveLink(n.href) ? ' active' : ''}`}
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
      <main className="main-content" style={billingToday.length > 0 && !dismissed ? { paddingTop: 40 } : {}}>
        {children}
      </main>

      {/* ── Mobile bottom nav ── */}
      <nav className="bottom-nav">
        <div className="bottom-nav-inner">
          {NAV.map(n => (
            <a
              key={n.href}
              href={n.href}
              className={`bottom-nav-link${isActiveLink(n.href) ? ' active' : ''}`}
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
