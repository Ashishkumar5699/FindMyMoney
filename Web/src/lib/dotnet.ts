const BASE = process.env.DOTNET_BASE_URL!;

export async function dotnetFetch(
  path: string,
  init: RequestInit = {},
  token?: string,
): Promise<Response> {
  const headers: Record<string, string> = {
    'Content-Type': 'application/json',
    ...(init.headers as Record<string, string>),
  };
  if (token) headers['Authorization'] = `Bearer ${token}`;

  return fetch(`${BASE}${path}`, { ...init, headers });
}
