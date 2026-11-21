import { jwtVerify, type JWTPayload } from 'jose';
import { NextRequest } from 'next/server';

// HS512 keys under 64 bytes are refused, the same rule as the .NET API's TokenKeyGuard
const MIN_KEY_BYTES = 64;

function key(name: string): Uint8Array | null {
  const value = process.env[name];
  return value ? new TextEncoder().encode(value) : null;
}

/**
 * The keys .NET tokens are checked against: DOTNET_JWT_SECRET (the API's current Tokenkey) and, during a rotation,
 * DOTNET_JWT_SECRET_PREVIOUS. There is deliberately no fallback: the key that used to be committed is public, so a
 * missing setting must stop the app (see instrumentation.ts), not quietly accept tokens anyone can forge.
 */
export function jwtKeys(): Uint8Array[] {
  const current = key('DOTNET_JWT_SECRET');
  if (!current || current.length < MIN_KEY_BYTES) {
    throw new Error(`DOTNET_JWT_SECRET is missing or shorter than ${MIN_KEY_BYTES} bytes. Set it to the .NET API's Tokenkey.`);
  }
  const previous = key('DOTNET_JWT_SECRET_PREVIOUS');
  return previous && previous.length >= MIN_KEY_BYTES ? [current, previous] : [current];
}

export interface FmmClaims extends JWTPayload {
  nameid: string;
}

export async function verifyToken(req: NextRequest): Promise<FmmClaims> {
  const auth = req.headers.get('Authorization') ?? '';
  const token = auth.replace(/^Bearer\s+/i, '');
  if (!token) throw new Error('No token');

  let lastError: unknown;
  for (const secret of jwtKeys()) {
    try {
      const { payload } = await jwtVerify(token, secret, { algorithms: ['HS512'] });
      return payload as FmmClaims;
    } catch (e) {
      lastError = e;
    }
  }
  throw lastError;
}

export function extractBearer(req: NextRequest): string {
  return (req.headers.get('Authorization') ?? '').replace(/^Bearer\s+/i, '');
}
