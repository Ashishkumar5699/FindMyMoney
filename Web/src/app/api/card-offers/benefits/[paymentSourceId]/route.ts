import { NextRequest, NextResponse } from 'next/server';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

export async function GET(req: NextRequest, { params }: { params: Promise<{ paymentSourceId: string }> }) {
  try { await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const { paymentSourceId } = await params;
  const upstream = await dotnetFetch(`/api/findmymoney/cardoffers/benefits/${paymentSourceId}`, { method: 'GET' }, extractBearer(req));
  return NextResponse.json(await upstream.json(), { status: upstream.status });
}

export async function PUT(req: NextRequest, { params }: { params: Promise<{ paymentSourceId: string }> }) {
  try { await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const { paymentSourceId } = await params;
  const body = await req.text();
  const upstream = await dotnetFetch(`/api/findmymoney/cardoffers/benefits/${paymentSourceId}`, { method: 'PUT', body }, extractBearer(req));
  return NextResponse.json(await upstream.json(), { status: upstream.status });
}
