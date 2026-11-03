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

export async function GET(req: NextRequest) {
  try { await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  return forward(await dotnetFetch('/api/findmymoney/budgets', { method: 'GET' }, extractBearer(req)));
}

export async function POST(req: NextRequest) {
  try { await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  const body = await req.text();
  return forward(await dotnetFetch('/api/findmymoney/budgets', { method: 'POST', body }, extractBearer(req)));
}
