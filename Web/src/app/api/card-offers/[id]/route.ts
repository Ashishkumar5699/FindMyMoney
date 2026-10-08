import { NextRequest, NextResponse } from 'next/server';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

export async function DELETE(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try { await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const { id } = await params;
  const upstream = await dotnetFetch(`/api/findmymoney/cardoffers/${id}`, { method: 'DELETE' }, extractBearer(req));
  const text = await upstream.text();
  return new NextResponse(text || null, { status: upstream.status });
}
