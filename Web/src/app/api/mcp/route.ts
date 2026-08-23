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
    description: 'Get the user\'s expenses. Filter by year, month (1-12), and/or category.',
    inputSchema: {
      type: 'object',
      properties: {
        year:     { type: 'integer', description: 'Year, e.g. 2026' },
        month:    { type: 'integer', description: 'Month 1-12, e.g. 8 for August' },
        category: { type: 'string',  description: 'Filter by category name (case-insensitive)' },
      },
    },
  },
  {
    name: 'get_income',
    description: 'Get the user\'s income entries. Filter by year and/or month (1-12).',
    inputSchema: {
      type: 'object',
      properties: {
        year:  { type: 'integer', description: 'Year, e.g. 2026' },
        month: { type: 'integer', description: 'Month 1-12, e.g. 8 for August' },
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
    description: 'Get the user\'s inter-account transfers. Filter by year and/or month (1-12).',
    inputSchema: {
      type: 'object',
      properties: {
        year:  { type: 'integer', description: 'Year, e.g. 2026' },
        month: { type: 'integer', description: 'Month 1-12, e.g. 8 for August' },
      },
    },
  },
];

// ── Tool executor ─────────────────────────────────────────────────────────────

async function callTool(
  name: string,
  args: Record<string, string | number>,
  userId: string,
  token: string,
): Promise<string> {
  const qs = (params: Record<string, string | number | undefined>) => {
    const p = new URLSearchParams();
    for (const [k, v] of Object.entries(params)) if (v !== undefined && v !== null && v !== '') p.set(k, String(v));
    const s = p.toString();
    return s ? `?${s}` : '';
  };

  let path: string;
  switch (name) {
    case 'get_expenses': {
      // Fetch by year/month from .NET; filter category client-side using startsWith
      // because the DB stores "BKC / Beer" not just "BKC"
      const expRes = await dotnetFetch(
        `/api/findmymoney/expenses/${userId}${qs({ year: args.year, month: args.month })}`,
        {},
        token,
      );
      let expenses = await expRes.json();
      if (args.category && Array.isArray(expenses)) {
        const cat = String(args.category).toLowerCase();
        expenses = expenses.filter((e: { category?: string }) =>
          (e.category ?? '').toLowerCase().startsWith(cat),
        );
      }
      return JSON.stringify(expenses);
    }
    case 'get_income':
      path = `/api/findmymoney/incomes/${userId}${qs({ year: args.year, month: args.month })}`;
      break;
    case 'get_monthly_summary': {
      const [yearStr, monStr] = (String(args.month ?? '')).split('-');
      const year = parseInt(yearStr, 10);
      const month = parseInt(monStr, 10);
      const [expRes, incRes] = await Promise.all([
        dotnetFetch(`/api/findmymoney/expenses/${userId}?year=${year}&month=${month}`, {}, token),
        dotnetFetch(`/api/findmymoney/incomes/${userId}?year=${year}&month=${month}`, {}, token),
      ]);
      const [expenses, incomes] = await Promise.all([expRes.json(), incRes.json()]);
      const totalExpenses = Array.isArray(expenses)
        ? expenses.reduce((s: number, e: { amount?: number }) => s + (e.amount ?? 0), 0)
        : 0;
      const totalIncome = Array.isArray(incomes)
        ? incomes.reduce((s: number, i: { amount?: number }) => s + (i.amount ?? 0), 0)
        : 0;
      // Aggregate expenses by parent category (stored as "Parent / Sub" or just "Parent")
      const byCategory: Record<string, number> = {};
      if (Array.isArray(expenses)) {
        for (const e of expenses as { category?: string; amount?: number }[]) {
          const parent = (e.category ?? 'Other').split(' / ')[0].trim();
          byCategory[parent] = (byCategory[parent] ?? 0) + (e.amount ?? 0);
        }
      }
      return JSON.stringify({
        month: args.month,
        year,
        monthNumber: month,
        totalExpenses,
        totalIncome,
        net: totalIncome - totalExpenses,
        expenseCount: Array.isArray(expenses) ? expenses.length : 0,
        incomeCount: Array.isArray(incomes) ? incomes.length : 0,
        expensesByCategory: byCategory,
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
      path = `/api/findmymoney/transfers/${userId}${qs({ year: args.year, month: args.month })}`;
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
      const { name, arguments: args } = params as { name: string; arguments: Record<string, string | number> };
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
