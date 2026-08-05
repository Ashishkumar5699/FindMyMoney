import { NextRequest, NextResponse } from 'next/server';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

export async function GET(req: NextRequest) {
  let claims;
  try { claims = await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const { searchParams } = new URL(req.url);
  const qs = searchParams.toString() ? `?${searchParams.toString()}` : '';
  const upstream = await dotnetFetch(`/api/findmymoney/transfers/${claims.nameid}${qs}`, { method: 'GET' }, extractBearer(req));
  return NextResponse.json(await upstream.json(), { status: upstream.status });
}

export async function POST(req: NextRequest) {
  let claims;
  try { claims = await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const body = await req.text();
  const upstream = await dotnetFetch(`/api/findmymoney/transfers/${claims.nameid}`, { method: 'POST', body }, extractBearer(req));
  return NextResponse.json(await upstream.json(), { status: upstream.status });
}
