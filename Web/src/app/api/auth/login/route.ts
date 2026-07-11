import { NextRequest, NextResponse } from 'next/server';
import { dotnetFetch } from '@/lib/dotnet';

export async function POST(req: NextRequest) {
  const body = await req.text();
  const upstream = await dotnetFetch('/api/findmymoney/auth/login', {
    method: 'POST',
    body,
  });
  const data = await upstream.json();
  return NextResponse.json(data, { status: upstream.status });
}
