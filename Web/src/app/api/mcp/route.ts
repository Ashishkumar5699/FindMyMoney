/**
 * FindMyMoney MCP Server (Streamable HTTP, JSON-RPC 2.0)
 *
 * Exposes financial data tools to AI clients (pnjb-ai-core).
 * The caller must supply a valid FindMyMoney JWT in Authorization: Bearer.
 * All tools are user-scoped — userId is always derived from the JWT, never
 * accepted as a parameter, so no user can access another user's data.
 */
import { NextRequest, NextResponse } from 'next/server';
import { verifyToken, extractBearer } from '@/lib/auth';
import { dotnetFetch } from '@/lib/dotnet';

// ── Tool definitions ──────────────────────────────────────────────────────────

const TOOLS = [
  {
    name: 'get_expenses',
    description: 'Get the user\'s expenses. Optionally filter by date range (YYYY-MM-DD) or category.',
    inputSchema: {
      type: 'object',
      properties: {
        startDate: { type: 'string', description: 'Start date (YYYY-MM-DD)' },
        endDate: { type: 'string', description: 'End date (YYYY-MM-DD)' },
        category: { type: 'string', description: 'Filter by category name' },
      },
    },
  },
  {
    name: 'get_income',
    description: 'Get the user\'s income entries. Optionally filter by date range.',
    inputSchema: {
      type: 'object',
      properties: {
        startDate: { type: 'string', description: 'Start date (YYYY-MM-DD)' },
        endDate: { type: 'string', description: 'End date (YYYY-MM-DD)' },
      },
    },
  },
  {
    name: 'get_monthly_summary',
    description: 'Get a monthly spending and income summary. Pass month as YYYY-MM.',
    inputSchema: {
      type: 'object',
      properties: {
        month: { type: 'string', description: 'Month in YYYY-MM format, e.g. 2026-08' },
      },
      required: ['month'],
    },
  },
  {
    name: 'get_loans_and_emis',
    description: 'Get the user\'s active loans and EMI obligations.',
    inputSchema: { type: 'object', properties: {} },
  },
  {
    name: 'get_credit_cards',
    description: 'Get the user\'s credit card bills.',
    inputSchema: { type: 'object', properties: {} },
  },
  {
    name: 'get_investments',
    description: 'Get the user\'s investments (FDs, mutual funds, etc.).',
    inputSchema: { type: 'object', properties: {} },
  },
  {
    name: 'get_transfers',
    description: 'Get the user\'s inter-account transfers.',
    inputSchema: {
      type: 'object',
      properties: {
        startDate: { type: 'string', description: 'Start date (YYYY-MM-DD)' },
        endDate: { type: 'string', description: 'End date (YYYY-MM-DD)' },
      },
    },
  },
];

// ── Tool executor ─────────────────────────────────────────────────────────────

async function callTool(
  name: string,
  args: Record<string, string>,
  userId: string,
  token: string,
): Promise<string> {
  const qs = (params: Record<string, string | undefined>) => {
    const p = new URLSearchParams();
    for (const [k, v] of Object.entries(params)) if (v) p.set(k, v);
    const s = p.toString();
    return s ? `?${s}` : '';
  };

  let path: string;
  switch (name) {
    case 'get_expenses':
      path = `/api/findmymoney/expenses/${userId}${qs({ startDate: args.startDate, endDate: args.endDate, category: args.category })}`;
      break;
    case 'get_income':
      path = `/api/findmymoney/incomes/${userId}${qs({ startDate: args.startDate, endDate: args.endDate })}`;
      break;
    case 'get_monthly_summary': {
      // Derive startDate/endDate from month (YYYY-MM)
      const [year, mon] = (args.month ?? '').split('-');
      const startDate = `${year}-${mon}-01`;
      const lastDay = new Date(+year, +mon, 0).getDate();
      const endDate = `${year}-${mon}-${String(lastDay).padStart(2, '0')}`;
      const [expRes, incRes] = await Promise.all([
        dotnetFetch(`/api/findmymoney/expenses/${userId}?startDate=${startDate}&endDate=${endDate}`, {}, token),
        dotnetFetch(`/api/findmymoney/incomes/${userId}?startDate=${startDate}&endDate=${endDate}`, {}, token),
      ]);
      const [expenses, incomes] = await Promise.all([expRes.json(), incRes.json()]);
      const totalExpenses = Array.isArray(expenses)
        ? expenses.reduce((s: number, e: { amount?: number }) => s + (e.amount ?? 0), 0)
        : 0;
      const totalIncome = Array.isArray(incomes)
        ? incomes.reduce((s: number, i: { amount?: number }) => s + (i.amount ?? 0), 0)
        : 0;
      return JSON.stringify({
        month: args.month,
        totalExpenses,
        totalIncome,
        net: totalIncome - totalExpenses,
        expenseCount: Array.isArray(expenses) ? expenses.length : 0,
        incomeCount: Array.isArray(incomes) ? incomes.length : 0,
        expenses,
        incomes,
      });
    }
    case 'get_loans_and_emis':
      path = `/api/findmymoney/loans/${userId}`;
      break;
    case 'get_credit_cards':
      path = `/api/findmymoney/cc-bills/${userId}`;
      break;
    case 'get_investments':
      path = `/api/findmymoney/investments/${userId}`;
      break;
    case 'get_transfers':
      path = `/api/findmymoney/transfers/${userId}${qs({ startDate: args.startDate, endDate: args.endDate })}`;
      break;
    default:
      throw new Error(`Unknown tool: ${name}`);
  }

  const res = await dotnetFetch(path, {}, token);
  const data = await res.json();
  return JSON.stringify(data);
}

// ── JSON-RPC 2.0 helpers ──────────────────────────────────────────────────────

function ok(id: unknown, result: unknown) {
  return NextResponse.json({ jsonrpc: '2.0', id, result });
}

function err(id: unknown, code: number, message: string) {
  return NextResponse.json({ jsonrpc: '2.0', id, error: { code, message } });
}

// ── Route handler ─────────────────────────────────────────────────────────────

export async function POST(req: NextRequest) {
  // Authenticate — JWT must be valid FindMyMoney token
  let claims;
  try {
    claims = await verifyToken(req);
  } catch {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }
  const token = extractBearer(req);
  const userId = claims.nameid;

  let body: { jsonrpc?: string; id?: unknown; method?: string; params?: unknown };
  try {
    body = await req.json();
  } catch {
    return err(null, -32700, 'Parse error');
  }

  const { id, method, params } = body;

  switch (method) {
    case 'initialize':
      return ok(id, {
        protocolVersion: '2025-03-26',
        capabilities: { tools: {} },
        serverInfo: { name: 'findmymoney-mcp', version: '1.0.0' },
      });

    case 'notifications/initialized':
      return new NextResponse(null, { status: 204 });

    case 'tools/list':
      return ok(id, { tools: TOOLS });

    case 'tools/call': {
      const { name, arguments: args } = params as { name: string; arguments: Record<string, string> };
      try {
        const text = await callTool(name, args ?? {}, userId, token);
        return ok(id, { content: [{ type: 'text', text }] });
      } catch (e) {
        return err(id, -32603, (e as Error).message);
      }
    }

    default:
      return err(id, -32601, `Method not found: ${method}`);
  }
}
