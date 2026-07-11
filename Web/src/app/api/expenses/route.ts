import { NextRequest, NextResponse } from 'next/server';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

export async function GET(req: NextRequest) {
  try {
    await verifyToken(req);
  } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const { searchParams } = new URL(req.url);
  const qs = searchParams.toString() ? `?${searchParams.toString()}` : '';
  const upstream = await dotnetFetch(
    `/api/findmymoney/expenses${qs}`,
    { method: 'GET' },
    extractBearer(req),
  );
  const data = await upstream.json();
  return NextResponse.json(data, { status: upstream.status });
}

export async function POST(req: NextRequest) {
  try {
    await verifyToken(req);
  } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const body = await req.text();
  const upstream = await dotnetFetch(
    '/api/findmymoney/expenses',
    { method: 'POST', body },
    extractBearer(req),
  );
  const data = await upstream.json();
  return NextResponse.json(data, { status: upstream.status });
}
