import { NextRequest, NextResponse } from 'next/server';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

async function guard(req: NextRequest) {
  try {
    await verifyToken(req);
  } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  return null;
}

export async function GET(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  const err = await guard(req);
  if (err) return err;
  const { id } = await params;
  const upstream = await dotnetFetch(`/api/findmymoney/emis/${id}`, { method: 'GET' }, extractBearer(req));
  return NextResponse.json(await upstream.json(), { status: upstream.status });
}

export async function PUT(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  const err = await guard(req);
  if (err) return err;
  const { id } = await params;
  const body = await req.text();
  const upstream = await dotnetFetch(`/api/findmymoney/emis/${id}`, { method: 'PUT', body }, extractBearer(req));
  return NextResponse.json(await upstream.json(), { status: upstream.status });
}

export async function DELETE(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  const err = await guard(req);
  if (err) return err;
  const { id } = await params;
  const upstream = await dotnetFetch(`/api/findmymoney/emis/${id}`, { method: 'DELETE' }, extractBearer(req));
  const text = await upstream.text();
  return new NextResponse(text || null, { status: upstream.status });
}
