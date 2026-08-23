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

  const body = await req.json() as { text?: string; sender?: string };
  if (!body.text?.trim()) {
    return NextResponse.json({ error: 'text required' }, { status: 400 });
  }

  const upstream = await fetch(`${AI_CORE_URL}/parse-sms`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'X-Platform-Key': PLATFORM_KEY,
    },
    body: JSON.stringify({ text: body.text, sender: body.sender ?? '' }),
  });

  const data = await upstream.json().catch(() => ({ error: 'AI parse error' }));

  if (!upstream.ok) {
    return NextResponse.json(data, { status: upstream.status });
  }

  return NextResponse.json(data);
}
