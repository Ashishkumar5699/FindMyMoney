import { NextRequest, NextResponse } from 'next/server';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

export async function POST(req: NextRequest, { params }: { params: Promise<{ contactId: string }> }) {
  let claims;
  try { claims = await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const { contactId } = await params;
  const upstream = await dotnetFetch(
    `/api/findmymoney/khata/${claims.nameid}/${contactId}/settle`,
    { method: 'POST' },
    extractBearer(req)
  );
  return NextResponse.json(await upstream.json(), { status: upstream.status });
}
