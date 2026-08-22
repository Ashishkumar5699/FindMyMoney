import { NextRequest, NextResponse } from 'next/server';
import { extractBearer } from '@/lib/auth';

const AI_CORE_URL = process.env.PNJB_AI_CORE_URL ?? '';
const PLATFORM_KEY = process.env.PNJB_AI_PLATFORM_KEY ?? '';

export async function POST(req: NextRequest) {
  const jwt = extractBearer(req);
  if (!jwt) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });

  if (!AI_CORE_URL) {
    return NextResponse.json({ error: 'AI service not configured' }, { status: 503 });
  }

  const body = await req.json();
  const { question, history } = body as { question: string; history?: unknown[] };
  if (!question?.trim()) {
    return NextResponse.json({ error: 'question required' }, { status: 400 });
  }

  const upstream = await fetch(`${AI_CORE_URL}/chat/financial`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'X-Platform-Key': PLATFORM_KEY,
    },
    body: JSON.stringify({ question, mcp_jwt: jwt, history: history ?? [] }),
  });

  if (!upstream.ok) {
    const text = await upstream.text().catch(() => '');
    return NextResponse.json(
      { error: text || 'AI service error' },
      { status: upstream.status },
    );
  }

  return new NextResponse(upstream.body, {
    headers: {
      'Content-Type': 'text/event-stream',
      'Cache-Control': 'no-cache',
      'X-Accel-Buffering': 'no',
    },
  });
}
