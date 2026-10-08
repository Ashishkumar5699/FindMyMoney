import { NextRequest, NextResponse } from 'next/server';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

export async function GET(req: NextRequest, { params }: { params: Promise<{ paymentSourceId: string }> }) {
  try { await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const { paymentSourceId } = await params;
  const upstream = await dotnetFetch(`/api/findmymoney/cardoffers/benefits/${paymentSourceId}`, { method: 'GET' }, extractBearer(req));
  const text = await upstream.text();
  if (!text) return new NextResponse(null, { status: upstream.status });
  try {
    return NextResponse.json(JSON.parse(text), { status: upstream.status });
  } catch {
    return new NextResponse(text, { status: upstream.status });
  }
}

export async function PUT(req: NextRequest, { params }: { params: Promise<{ paymentSourceId: string }> }) {
  try { await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const { paymentSourceId } = await params;
  const body = await req.text();
  const upstream = await dotnetFetch(`/api/findmymoney/cardoffers/benefits/${paymentSourceId}`, { method: 'PUT', body }, extractBearer(req));
  const text = await upstream.text();
  return new NextResponse(text || null, { status: upstream.status });
}
