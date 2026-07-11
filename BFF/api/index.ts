import 'reflect-metadata';
import type { IncomingMessage, ServerResponse } from 'http';

export const config = { maxDuration: 60 };

type Handler = (req: IncomingMessage, res: ServerResponse) => Promise<void>;
let handler: Handler | null = null;

export default async function (req: IncomingMessage, res: ServerResponse) {
  try {
    if (!handler) {
      const mod = require('../dist/main') as { default: Handler };
      handler = mod.default;
    }
    await handler(req, res);
  } catch (err: any) {
    console.error('[BFF] boot error:', err?.message);
    if (!res.headersSent) {
      res.writeHead(500, { 'Content-Type': 'application/json' });
      res.end(JSON.stringify({ error: err?.message ?? 'Internal server error' }));
    }
  }
}
