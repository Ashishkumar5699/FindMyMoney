import { NextRequest, NextResponse } from 'next/server';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

// Ends every session of the user: .NET raises their token version, so all tokens issued so far stop working.
export async function POST(req: NextRequest) {
  try { await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const upstream = await dotnetFetch('/api/findmymoney/auth/logout-all', { method: 'POST' }, extractBearer(req));
  if (upstream.ok) return NextResponse.json({ ok: true });
  return NextResponse.json({ message: 'Signing out everywhere failed.' }, { status: upstream.status });
}
