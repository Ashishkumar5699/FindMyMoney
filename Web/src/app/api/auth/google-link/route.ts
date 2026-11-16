import { NextRequest, NextResponse } from 'next/server';
import { getToken } from 'next-auth/jwt';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

const APP_URL = process.env.NEXT_PUBLIC_APP_URL ?? 'http://localhost:3000';

// Links the Google account just signed in with (its ID token is in the encrypted NextAuth cookie) to the signed-in
// FindMyMoney user. .NET verifies the ID token and refuses a Google account linked to someone else (409).
export async function POST(req: NextRequest) {
  try { await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }

  const session = await getToken({ req, secret: process.env.AUTH_SECRET, secureCookie: APP_URL.startsWith('https://') });
  const idToken = session?.googleIdToken as string | undefined;
  if (!idToken) {
    return NextResponse.json({ message: 'Google sign-in didn’t finish. Try linking again.' }, { status: 400 });
  }

  const upstream = await dotnetFetch('/api/findmymoney/auth/google/link', {
    method: 'POST',
    body: JSON.stringify({ idToken }),
  }, extractBearer(req));
  const text = await upstream.text();
  try {
    return NextResponse.json(text ? JSON.parse(text) : {}, { status: upstream.status });
  } catch {
    return NextResponse.json({ message: 'Linking Google failed.' }, { status: upstream.status });
  }
}
