'use client';

import { useState, useRef, useEffect, useCallback } from 'react';
import { getToken } from '@/stores/auth';

interface Message {
  role: 'user' | 'assistant';
  content: string;
  tools?: string[];
}

const TOOL_LABEL: Record<string, string> = {
  get_expenses: 'Fetching expenses',
  get_income: 'Fetching income',
  get_monthly_summary: 'Loading monthly summary',
  get_spending_summary: 'Loading spending breakdown',
  get_loans_and_emis: 'Fetching loans & EMIs',
  get_credit_cards: 'Fetching credit cards',
  get_investments: 'Fetching investments',
  get_financial_summary: 'Loading financial overview',
  get_upcoming_commitments: 'Loading upcoming commitments',
  compare_period: 'Comparing periods',
};

export default function AiChatPanel() {
  const [open, setOpen] = useState(false);
  const [messages, setMessages] = useState<Message[]>([]);
  const [input, setInput] = useState('');
  const [loading, setLoading] = useState(false);
  const [toolStatus, setToolStatus] = useState('');
  const bottomRef = useRef<HTMLDivElement>(null);
  const inputRef = useRef<HTMLTextAreaElement>(null);

  useEffect(() => {
    bottomRef.current?.scrollIntoView({ behavior: 'smooth' });
  }, [messages, toolStatus]);

  useEffect(() => {
    if (open) inputRef.current?.focus();
  }, [open]);

  const send = useCallback(async () => {
    const q = input.trim();
    if (!q || loading) return;

    const token = getToken();
    if (!token) return;

    const userMsg: Message = { role: 'user', content: q };
    setMessages(prev => [...prev, userMsg]);
    setInput('');
    setLoading(true);
    setToolStatus('');

    const history = messages.map(m => ({ role: m.role, content: m.content }));

    const assistantMsg: Message = { role: 'assistant', content: '', tools: [] };
    setMessages(prev => [...prev, assistantMsg]);

    try {
      const res = await fetch('/api/ai/chat', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`,
        },
        body: JSON.stringify({ question: q, history }),
      });

      if (!res.ok) {
        const err = await res.json().catch(() => ({ error: 'AI unavailable' }));
        setMessages(prev => {
          const next = [...prev];
          next[next.length - 1] = { role: 'assistant', content: `Error: ${err.error}` };
          return next;
        });
        return;
      }

      const reader = res.body?.getReader();
      const decoder = new TextDecoder();
      if (!reader) return;

      let buffer = '';
      while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        buffer += decoder.decode(value, { stream: true });
        const lines = buffer.split('\n');
        buffer = lines.pop() ?? '';

        for (const line of lines) {
          if (!line.startsWith('data:')) continue;
          try {
            const data = JSON.parse(line.slice(5).trim());
            if (data.done) {
              setToolStatus('');
              break;
            }
            if (data.tool) {
              const label = TOOL_LABEL[data.tool] ?? data.tool;
              setToolStatus(label + '...');
              setMessages(prev => {
                const next = [...prev];
                const last = next[next.length - 1];
                if (last.role === 'assistant') {
                  last.tools = [...(last.tools ?? []), label];
                }
                return next;
              });
            } else if (data.token) {
              setToolStatus('');
              setMessages(prev => {
                const next = [...prev];
                const last = next[next.length - 1];
                if (last.role === 'assistant') {
                  last.content += data.token;
                }
                return next;
              });
            }
          } catch {
            // skip malformed SSE line
          }
        }
      }
    } catch (e) {
      setMessages(prev => {
        const next = [...prev];
        next[next.length - 1] = { role: 'assistant', content: 'Connection error. Is the AI service running?' };
        return next;
      });
    } finally {
      setLoading(false);
      setToolStatus('');
    }
  }, [input, loading, messages]);

  function handleKey(e: React.KeyboardEvent<HTMLTextAreaElement>) {
    if (e.key === 'Enter' && !e.shiftKey) {
      e.preventDefault();
      send();
    }
  }

  return (
    <>
      {/* ── Floating button ── */}
      <button
        onClick={() => setOpen(o => !o)}
        title="Ask AI about your finances"
        style={{
          position: 'fixed', bottom: 80, right: 20, zIndex: 1500,
          width: 52, height: 52, borderRadius: '50%',
          background: 'linear-gradient(135deg, #6366f1, #8b5cf6)',
          border: 'none', cursor: 'pointer', fontSize: 22,
          boxShadow: '0 4px 16px rgba(99,102,241,0.5)',
          display: 'flex', alignItems: 'center', justifyContent: 'center',
          transition: 'transform 0.2s',
        }}
        onMouseEnter={e => (e.currentTarget.style.transform = 'scale(1.1)')}
        onMouseLeave={e => (e.currentTarget.style.transform = 'scale(1)')}
      >
        {open ? '✕' : '✨'}
      </button>

      {/* ── Chat panel ── */}
      {open && (
        <div style={{
          position: 'fixed', bottom: 144, right: 20, zIndex: 1500,
          width: 'min(380px, calc(100vw - 40px))',
          height: 'min(520px, calc(100vh - 180px))',
          background: '#1e1e2e', border: '1px solid #3b3b5c',
          borderRadius: 16, boxShadow: '0 8px 32px rgba(0,0,0,0.5)',
          display: 'flex', flexDirection: 'column', overflow: 'hidden',
        }}>
          {/* Header */}
          <div style={{
            padding: '12px 16px', borderBottom: '1px solid #3b3b5c',
            background: 'linear-gradient(135deg, #6366f1, #8b5cf6)',
            display: 'flex', alignItems: 'center', gap: 8,
          }}>
            <span style={{ fontSize: 18 }}>✨</span>
            <div>
              <div style={{ color: '#fff', fontWeight: 700, fontSize: 14 }}>Finance AI</div>
              <div style={{ color: 'rgba(255,255,255,0.75)', fontSize: 11 }}>
                Powered by Ollama · Local & private
              </div>
            </div>
          </div>

          {/* Messages */}
          <div style={{
            flex: 1, overflowY: 'auto', padding: '12px 14px',
            display: 'flex', flexDirection: 'column', gap: 10,
          }}>
            {messages.length === 0 && (
              <div style={{ color: '#6b7280', fontSize: 13, textAlign: 'center', marginTop: 20 }}>
                Ask anything about your finances.<br />
                <span style={{ fontSize: 11 }}>
                  e.g. "How much did I spend in August?" or "Show my upcoming EMIs"
                </span>
              </div>
            )}

            {messages.map((m, i) => (
              <div key={i} style={{ display: 'flex', flexDirection: 'column', alignItems: m.role === 'user' ? 'flex-end' : 'flex-start' }}>
                {/* Tool badges */}
                {m.role === 'assistant' && m.tools && m.tools.length > 0 && (
                  <div style={{ display: 'flex', flexWrap: 'wrap', gap: 4, marginBottom: 4 }}>
                    {m.tools.map((t, ti) => (
                      <span key={ti} style={{
                        fontSize: 10, padding: '2px 6px', borderRadius: 10,
                        background: '#312e81', color: '#a5b4fc',
                      }}>{t}</span>
                    ))}
                  </div>
                )}
                <div style={{
                  maxWidth: '86%', padding: '8px 12px', borderRadius: m.role === 'user' ? '14px 14px 4px 14px' : '14px 14px 14px 4px',
                  background: m.role === 'user' ? '#6366f1' : '#2a2a3e',
                  color: '#e2e8f0', fontSize: 13, lineHeight: 1.5,
                  whiteSpace: 'pre-wrap', wordBreak: 'break-word',
                }}>
                  {m.content || (m.role === 'assistant' && loading && i === messages.length - 1
                    ? <span style={{ color: '#818cf8' }}>Thinking...</span>
                    : '')}
                </div>
              </div>
            ))}

            {/* Live tool status */}
            {toolStatus && (
              <div style={{ display: 'flex', alignItems: 'center', gap: 6 }}>
                <span style={{
                  display: 'inline-block', width: 8, height: 8, borderRadius: '50%',
                  background: '#818cf8',
                  animation: 'pulse 1s infinite',
                }} />
                <span style={{ fontSize: 11, color: '#818cf8' }}>{toolStatus}</span>
              </div>
            )}

            <div ref={bottomRef} />
          </div>

          {/* Input */}
          <div style={{ padding: '10px 12px', borderTop: '1px solid #3b3b5c', display: 'flex', gap: 8, alignItems: 'flex-end' }}>
            <textarea
              ref={inputRef}
              value={input}
              onChange={e => setInput(e.target.value)}
              onKeyDown={handleKey}
              placeholder="Ask about your finances..."
              rows={1}
              disabled={loading}
              style={{
                flex: 1, background: '#2a2a3e', border: '1px solid #3b3b5c',
                borderRadius: 10, padding: '8px 10px', color: '#e2e8f0',
                fontSize: 13, resize: 'none', outline: 'none',
                lineHeight: 1.4, maxHeight: 80, overflowY: 'auto',
                fontFamily: 'inherit',
              }}
            />
            <button
              onClick={send}
              disabled={loading || !input.trim()}
              style={{
                width: 36, height: 36, borderRadius: 10, border: 'none', cursor: 'pointer',
                background: loading || !input.trim() ? '#3b3b5c' : '#6366f1',
                color: '#fff', fontSize: 16, flexShrink: 0,
                display: 'flex', alignItems: 'center', justifyContent: 'center',
                transition: 'background 0.2s',
              }}
            >
              {loading ? '⏳' : '➤'}
            </button>
          </div>
        </div>
      )}

      <style>{`
        @keyframes pulse {
          0%, 100% { opacity: 1; }
          50% { opacity: 0.4; }
        }
      `}</style>
    </>
  );
}
