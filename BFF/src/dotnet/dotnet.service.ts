import { Injectable, HttpException, HttpStatus } from '@nestjs/common';
import { HttpService } from '@nestjs/axios';
import { ConfigService } from '@nestjs/config';
import { firstValueFrom } from 'rxjs';
import type { AxiosRequestConfig } from 'axios';

@Injectable()
export class DotnetService {
  private readonly base: string;

  constructor(private http: HttpService, private config: ConfigService) {
    this.base = (this.config.get<string>('dotnet.apiUrl') ?? '').replace(/\/$/, '');
  }

  // ── Auth (no token needed) ────────────────────────────────────────────────

  login(body: { userName: string; password: string }) {
    return this.post('/api/findmymoney/Auth/login', body);
  }

  register(body: { userName: string; email: string; password: string }) {
    return this.post('/api/findmymoney/Auth/register', body);
  }

  // ── Expenses ──────────────────────────────────────────────────────────────

  getExpenses(userId: string, token: string, query?: Record<string, string>) {
    return this.get(`/api/findmymoney/Expenses/${userId}`, token, query);
  }

  createExpense(userId: string, body: object, token: string) {
    return this.post(`/api/findmymoney/Expenses/${userId}`, body, token);
  }

  getExpense(userId: string, id: string, token: string) {
    return this.get(`/api/findmymoney/Expenses/${userId}/${id}`, token);
  }

  updateExpense(userId: string, id: string, body: object, token: string) {
    return this.put(`/api/findmymoney/Expenses/${userId}/${id}`, body, token);
  }

  deleteExpense(userId: string, id: string, token: string) {
    return this.delete(`/api/findmymoney/Expenses/${userId}/${id}`, token);
  }

  // ── Incomes ───────────────────────────────────────────────────────────────

  getIncomes(userId: string, token: string, query?: Record<string, string>) {
    return this.get(`/api/findmymoney/Incomes/${userId}`, token, query);
  }

  createIncome(userId: string, body: object, token: string) {
    return this.post(`/api/findmymoney/Incomes/${userId}`, body, token);
  }

  getIncome(userId: string, id: string, token: string) {
    return this.get(`/api/findmymoney/Incomes/${userId}/${id}`, token);
  }

  updateIncome(userId: string, id: string, body: object, token: string) {
    return this.put(`/api/findmymoney/Incomes/${userId}/${id}`, body, token);
  }

  deleteIncome(userId: string, id: string, token: string) {
    return this.delete(`/api/findmymoney/Incomes/${userId}/${id}`, token);
  }

  // ── EMIs ──────────────────────────────────────────────────────────────────

  getEmis(userId: string, token: string) {
    return this.get(`/api/findmymoney/Emis/${userId}`, token);
  }

  createEmi(userId: string, body: object, token: string) {
    return this.post(`/api/findmymoney/Emis/${userId}`, body, token);
  }

  getEmi(userId: string, id: string, token: string) {
    return this.get(`/api/findmymoney/Emis/${userId}/${id}`, token);
  }

  updateEmi(userId: string, id: string, body: object, token: string) {
    return this.put(`/api/findmymoney/Emis/${userId}/${id}`, body, token);
  }

  deleteEmi(userId: string, id: string, token: string) {
    return this.delete(`/api/findmymoney/Emis/${userId}/${id}`, token);
  }

  // ── HTTP helpers ──────────────────────────────────────────────────────────

  private cfg(token?: string): AxiosRequestConfig {
    return {
      headers: {
        'Content-Type': 'application/json',
        ...(token ? { Authorization: `Bearer ${token}` } : {}),
      },
    };
  }

  private async get(path: string, token?: string, params?: Record<string, string>) {
    try {
      const res = await firstValueFrom(
        this.http.get(`${this.base}${path}`, { ...this.cfg(token), params })
      );
      return res.data;
    } catch (e: any) { throw this.toHttpException(e); }
  }

  private async post(path: string, body: object, token?: string) {
    try {
      const res = await firstValueFrom(
        this.http.post(`${this.base}${path}`, body, this.cfg(token))
      );
      return res.data;
    } catch (e: any) { throw this.toHttpException(e); }
  }

  private async put(path: string, body: object, token?: string) {
    try {
      const res = await firstValueFrom(
        this.http.put(`${this.base}${path}`, body, this.cfg(token))
      );
      return res.data;
    } catch (e: any) { throw this.toHttpException(e); }
  }

  private async delete(path: string, token?: string) {
    try {
      const res = await firstValueFrom(
        this.http.delete(`${this.base}${path}`, this.cfg(token))
      );
      return res.data;
    } catch (e: any) { throw this.toHttpException(e); }
  }

  private toHttpException(e: any): HttpException {
    const data = e?.response?.data;
    const message = data?.Exception ?? data?.Message ?? data?.message ?? e?.message ?? 'Upstream error';
    const dotnetStatus = e?.response?.status ?? HttpStatus.INTERNAL_SERVER_ERROR;
    const status = dotnetStatus === 500 && data?.IsSystemError === false
      ? HttpStatus.BAD_REQUEST : dotnetStatus;
    return new HttpException(message, status);
  }
}
