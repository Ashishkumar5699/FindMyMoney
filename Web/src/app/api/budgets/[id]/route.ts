import { NextRequest, NextResponse } from 'next/server';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

async function forward(upstream: Response) {
  const text = await upstream.text();
  if (!text) return new NextResponse(null, { status: upstream.status });
  try {
    return NextResponse.json(JSON.parse(text), { status: upstream.status });
  } catch {
    return new NextResponse(text, { status: upstream.status });
  }
}

export async function PUT(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try { await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const { id } = await params;
  const body = await req.text();
  return forward(await dotnetFetch(`/api/findmymoney/budgets/${id}`, { method: 'PUT', body }, extractBearer(req)));
}

export async function DELETE(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try { await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const { id } = await params;
  return forward(await dotnetFetch(`/api/findmymoney/budgets/${id}`, { method: 'DELETE' }, extractBearer(req)));
}
