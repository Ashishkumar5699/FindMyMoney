import { NextRequest, NextResponse } from 'next/server';
import { getToken } from 'next-auth/jwt';
import { dotnetFetch } from '@/lib/dotnet';

const APP_URL = process.env.NEXT_PUBLIC_APP_URL ?? 'http://localhost:3000';

export async function GET(req: NextRequest) {
  // Read the ID token straight from the encrypted session cookie; .NET verifies it with Google.
  const token = await getToken({ req, secret: process.env.AUTH_SECRET, secureCookie: APP_URL.startsWith('https://') });
  const idToken = token?.googleIdToken as string | undefined;

  if (!idToken) {
    return NextResponse.redirect(new URL('/login?error=google_failed', APP_URL));
  }

  try {
    const res = await dotnetFetch('/api/findmymoney/auth/google', {
      method: 'POST',
      body: JSON.stringify({ idToken }),
    });

    if (!res.ok) {
      return NextResponse.redirect(new URL('/login?error=google_failed', APP_URL));
    }

    const data = await res.json();
    const appToken = data?.token ?? data?.data?.token;
    const username = data?.username ?? data?.userName ?? data?.data?.username ?? data?.email ?? data?.data?.email;

    if (!appToken) {
      return NextResponse.redirect(new URL('/login?error=no_token', APP_URL));
    }

    const url = new URL('/auth/google-complete', APP_URL);
    url.searchParams.set('t', appToken);
    url.searchParams.set('u', username);
    return NextResponse.redirect(url);
  } catch {
    return NextResponse.redirect(new URL('/login?error=google_failed', APP_URL));
  }
}
