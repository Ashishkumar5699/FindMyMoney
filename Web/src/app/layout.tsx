import type { Metadata, Viewport } from 'next';
import type { ReactNode } from 'react';
import { AppRouterCacheProvider } from '@mui/material-nextjs/v15-appRouter';
import MuiTheme from './MuiTheme';
import './globals.css';

export const metadata: Metadata = {
  title: 'FindMyMoney',
  description: 'Personal finance tracker',
  manifest: '/manifest.json',
  appleWebApp: {
    capable: true,
    title: 'FindMyMoney',
    statusBarStyle: 'default',
  },
  icons: { icon: '/icon.svg', apple: '/icon.svg' },
};

export const viewport: Viewport = {
  width: 'device-width',
  initialScale: 1,
  themeColor: '#3b82f6',
};

export default function RootLayout({ children }: { children: ReactNode }) {
  return (
    <html lang="en">
      <body>
        <AppRouterCacheProvider>
          <MuiTheme>{children}</MuiTheme>
        </AppRouterCacheProvider>
      </body>
    </html>
  );
}
