// Runs once when the server starts: refuse to serve without a safe DOTNET_JWT_SECRET, so a missing setting shows up
// as a failed deployment instead of every signed-in page answering 401 (or, before this check, accepting forged tokens).
export async function register() {
  if (process.env.NEXT_RUNTIME !== 'nodejs') return;
  const { jwtKeys } = await import('./lib/auth');
  jwtKeys();
}
