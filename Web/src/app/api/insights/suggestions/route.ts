import { NextRequest, NextResponse } from 'next/server';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

// The API may wait up to 45 s for the AI gateway
export const maxDuration = 60;

// Same shape .NET returns when no AI model is up: a normal state for the card, never an error
const NOT_READY = {
  status: 'not_ready',
  suggestions: [],
  message: 'AI models are not ready yet. Suggestions will show here once they are.',
  generatedAt: null,
};

export async function GET(req: NextRequest) {
  try { await verifyToken(req); } catch {
    return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
  }
  try {
    const upstream = await dotnetFetch('/api/findmymoney/insights/suggestions', { method: 'GET' }, extractBearer(req));
    if (upstream.status === 401) return NextResponse.json({ message: 'Unauthorized' }, { status: 401 });
    if (!upstream.ok) return NextResponse.json(NOT_READY);
    const json = await upstream.json();
    return NextResponse.json(json?.data ?? json);
  } catch {
    // The API itself unreachable: the card still shows the calm not-ready state, the rest of the page is unaffected
    return NextResponse.json(NOT_READY);
  }
}
