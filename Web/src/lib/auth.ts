import { jwtVerify, type JWTPayload } from 'jose';
import { NextRequest } from 'next/server';

const secret = new TextEncoder().encode(
  process.env.DOTNET_JWT_SECRET ??
    'this is my custom Secret key for authenticationthis is my custom Secret key for authentication',
);

export interface FmmClaims extends JWTPayload {
  nameid: string;
}

export async function verifyToken(req: NextRequest): Promise<FmmClaims> {
  const auth = req.headers.get('Authorization') ?? '';
  const token = auth.replace(/^Bearer\s+/i, '');
  if (!token) throw new Error('No token');

  const { payload } = await jwtVerify(token, secret, { algorithms: ['HS512'] });
  return payload as FmmClaims;
}

export function extractBearer(req: NextRequest): string {
  return (req.headers.get('Authorization') ?? '').replace(/^Bearer\s+/i, '');
}
