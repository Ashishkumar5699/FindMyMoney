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
    description: 'Get total spending, income, and category breakdown for a month.',
    inputSchema: {
      type: 'object',
      properties: {
        year:  { type: 'integer', description: 'Year, e.g. 2026' },
        month: { type: 'integer', description: 'Month 1-12, e.g. 8 for August' },
      },
      required: ['year', 'month'],
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

// ── Helpers ───────────────────────────────────────────────────────────────────

// .NET always wraps: { data: [...], hasErrors: false, message: "Success" }
// Extract the inner array so all Array.isArray checks work correctly.
function unwrapList(raw: unknown): unknown[] {
  if (Array.isArray(raw)) return raw;
  if (raw && typeof raw === 'object' && Array.isArray((raw as Record<string, unknown>).data)) {
    return (raw as Record<string, unknown>).data as unknown[];
  }
  return [];
}

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
      // Fetch by year/month; filter category client-side (DB stores "BKC / Beer", not "BKC")
      const expRes = await dotnetFetch(
        `/api/findmymoney/expenses/${userId}${qs({ year: args.year, month: args.month })}`,
        {},
        token,
      );
      let expenses = unwrapList(await expRes.json());
      if (args.category) {
        const cat = String(args.category).toLowerCase();
        expenses = expenses.filter((e) =>
          ((e as { category?: string }).category ?? '').toLowerCase().startsWith(cat),
        );
      }
      return JSON.stringify(expenses);
    }
    case 'get_income':
      path = `/api/findmymoney/incomes/${userId}${qs({ year: args.year, month: args.month })}`;
      break;
    case 'get_monthly_summary': {
      // Accepts year+month integers (consistent with get_expenses schema)
      // Also handles legacy YYYY-MM string in case model sends it
      let year: number, month: number;
      if (args.year && args.month) {
        year = Number(args.year);
        month = Number(args.month);
      } else {
        const [yearStr, monStr] = (String(args.month ?? '')).split('-');
        year = parseInt(yearStr, 10);
        month = parseInt(monStr, 10);
      }
      const [expRes, incRes] = await Promise.all([
        dotnetFetch(`/api/findmymoney/expenses/${userId}?year=${year}&month=${month}`, {}, token),
        dotnetFetch(`/api/findmymoney/incomes/${userId}?year=${year}&month=${month}`, {}, token),
      ]);
      const expenses = unwrapList(await expRes.json()) as { category?: string; amount?: number }[];
      const incomes = unwrapList(await incRes.json()) as { amount?: number }[];
      const totalExpenses = expenses.reduce((s, e) => s + (e.amount ?? 0), 0);
      const totalIncome = incomes.reduce((s, i) => s + (i.amount ?? 0), 0);
      const byCategory: Record<string, number> = {};
      for (const e of expenses) {
        const parent = (e.category ?? 'Other').split(' / ')[0].trim();
        byCategory[parent] = (byCategory[parent] ?? 0) + (e.amount ?? 0);
      }
      return JSON.stringify({
        year,
        month,
        totalExpenses,
        totalIncome,
        net: totalIncome - totalExpenses,
        expenseCount: expenses.length,
        incomeCount: incomes.length,
        expensesByCategory: byCategory,
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
  return JSON.stringify(unwrapList(await res.json()));
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
