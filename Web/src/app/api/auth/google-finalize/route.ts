import { NextResponse } from 'next/server';
import { auth } from '@/lib/auth-next';
import { dotnetFetch } from '@/lib/dotnet';

const APP_URL = process.env.NEXT_PUBLIC_APP_URL ?? 'http://localhost:3000';

export async function GET() {
  const session = await auth();
  const googleId = (session as Record<string, unknown> | null)?.googleId as string | undefined;

  if (!session?.user?.email || !googleId) {
    return NextResponse.redirect(new URL('/login?error=google_failed', APP_URL));
  }

  try {
    const res = await dotnetFetch('/api/findmymoney/auth/google', {
      method: 'POST',
      body: JSON.stringify({
        googleId,
        email: session.user.email,
        name: session.user.name ?? session.user.email,
      }),
    });

    if (!res.ok) {
      return NextResponse.redirect(new URL('/login?error=google_failed', APP_URL));
    }

    const data = await res.json();
    const token = data?.token ?? data?.data?.token;
    const username = data?.username ?? data?.userName ?? data?.data?.username ?? session.user.email;

    if (!token) {
      return NextResponse.redirect(new URL('/login?error=no_token', APP_URL));
    }

    const url = new URL('/auth/google-complete', APP_URL);
    url.searchParams.set('t', token);
    url.searchParams.set('u', username);
    return NextResponse.redirect(url);
  } catch {
    return NextResponse.redirect(new URL('/login?error=google_failed', APP_URL));
  }
}
