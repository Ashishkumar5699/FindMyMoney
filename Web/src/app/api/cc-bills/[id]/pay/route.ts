import { NextRequest, NextResponse } from 'next/server';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

export async function PUT(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  let claims;
  try { claims = await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const { id } = await params;
  const upstream = await dotnetFetch(`/api/findmymoney/creditcardbills/${claims.nameid}/${id}/pay`, { method: 'PUT' }, extractBearer(req));
  return NextResponse.json(await upstream.json(), { status: upstream.status });
}
