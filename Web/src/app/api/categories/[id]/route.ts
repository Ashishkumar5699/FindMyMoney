import { NextRequest, NextResponse } from 'next/server';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

export async function PUT(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  let claims;
  try { claims = await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const { id } = await params;
  const body = await req.text();
  const upstream = await dotnetFetch(`/api/findmymoney/categories/${claims.nameid}/${id}`, { method: 'PUT', body }, extractBearer(req));
  return NextResponse.json(await upstream.json(), { status: upstream.status });
}

export async function DELETE(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  let claims;
  try { claims = await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const { id } = await params;
  const upstream = await dotnetFetch(`/api/findmymoney/categories/${claims.nameid}/${id}`, { method: 'DELETE' }, extractBearer(req));
  const text = await upstream.text();
  return new NextResponse(text || null, { status: upstream.status });
}
