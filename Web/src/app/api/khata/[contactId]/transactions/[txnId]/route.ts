import { NextRequest, NextResponse } from 'next/server';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

export async function DELETE(req: NextRequest, { params }: { params: Promise<{ contactId: string; txnId: string }> }) {
  let claims;
  try { claims = await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const { contactId, txnId } = await params;
  const upstream = await dotnetFetch(
    `/api/findmymoney/khata/${claims.nameid}/${contactId}/transactions/${txnId}`,
    { method: 'DELETE' },
    extractBearer(req)
  );
  const text = await upstream.text();
  return new NextResponse(text || null, { status: upstream.status });
}
