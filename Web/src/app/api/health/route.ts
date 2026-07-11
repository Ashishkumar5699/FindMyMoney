import { NextResponse } from 'next/server';
import { dotnetFetch } from '@/lib/dotnet';

export async function GET() {
  try {
    const upstream = await dotnetFetch('/api/health', { method: 'GET' });
    const data = await upstream.json();
    return NextResponse.json(data, { status: upstream.status });
  } catch {
    return NextResponse.json({ ok: false }, { status: 200 });
  }
}
