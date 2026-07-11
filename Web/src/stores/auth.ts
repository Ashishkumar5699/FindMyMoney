'use client';

export interface AuthState {
  token: string | null;
  userName: string | null;
  accountId: string | null;
}

const KEY = 'fmm_token';
const USER_KEY = 'fmm_user';
const ACCOUNT_KEY = 'fmm_account';

export function getToken(): string | null {
  if (typeof window === 'undefined') return null;
  return localStorage.getItem(KEY);
}

export function setAuth(token: string, userName: string, accountId: string) {
  localStorage.setItem(KEY, token);
  localStorage.setItem(USER_KEY, userName);
  localStorage.setItem(ACCOUNT_KEY, accountId);
}

export function clearAuth() {
  localStorage.removeItem(KEY);
  localStorage.removeItem(USER_KEY);
  localStorage.removeItem(ACCOUNT_KEY);
}

export function getUser(): string | null {
  if (typeof window === 'undefined') return null;
  return localStorage.getItem(USER_KEY);
}
