import { NextRequest, NextResponse } from 'next/server';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

export async function GET(req: NextRequest) {
  try { await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const upstream = await dotnetFetch(`/api/findmymoney/cardoffers`, { method: 'GET' }, extractBearer(req));
  return NextResponse.json(await upstream.json(), { status: upstream.status });
}

export async function POST(req: NextRequest) {
  try { await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const body = await req.text();
  const upstream = await dotnetFetch(`/api/findmymoney/cardoffers`, { method: 'POST', body }, extractBearer(req));
  const text = await upstream.text();
  if (!text) return new NextResponse(null, { status: upstream.status });
  try {
    return NextResponse.json(JSON.parse(text), { status: upstream.status });
  } catch {
    return new NextResponse(text, { status: upstream.status });
  }
}
