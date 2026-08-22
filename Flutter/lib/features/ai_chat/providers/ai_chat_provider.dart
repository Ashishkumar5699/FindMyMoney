import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/di/providers.dart';
import '../services/ai_chat_service.dart';

final aiChatServiceProvider = Provider<AiChatService>(
  (ref) => AiChatService(ref.read(dioProvider)),
);

class AiChatNotifier extends StateNotifier<AiChatState> {
  final AiChatService _service;

  AiChatNotifier(this._service) : super(const AiChatState());

  Future<void> send(String question) async {
    if (question.trim().isEmpty || state.loading) return;

    final userMsg = AiChatMessage(role: 'user', content: question.trim());
    final assistantMsg = AiChatMessage(role: 'assistant', content: '');

    state = state.copyWith(
      messages: [...state.messages, userMsg, assistantMsg],
      loading: true,
      toolStatus: '',
    );

    final history = state.messages
        .where((m) => m.content.isNotEmpty)
        .take(state.messages.length - 2) // exclude the two we just added
        .toList();

    try {
      await for (final token in _service.sendMessage(question.trim(), history)) {
        if (token.done) {
          state = state.copyWith(loading: false, toolStatus: '');
          return;
        }
        if (token.error != null) {
          _replaceLastAssistant('Error: ${token.error}');
          state = state.copyWith(loading: false, toolStatus: '');
          return;
        }
        if (token.tool != null) {
          final label = _toolLabel(token.tool!);
          state = state.copyWith(toolStatus: '$label...');
          _appendToolBadge(label);
        } else if (token.text != null) {
          state = state.copyWith(toolStatus: '');
          _appendText(token.text!);
        }
      }
    } catch (e) {
      _replaceLastAssistant('Connection error. Is the AI service running?');
      state = state.copyWith(loading: false, toolStatus: '');
    }
  }

  void clear() => state = const AiChatState();

  void _appendText(String text) {
    final msgs = List<AiChatMessage>.from(state.messages);
    final last = msgs.last;
    msgs[msgs.length - 1] = last.copyWith(content: last.content + text);
    state = state.copyWith(messages: msgs);
  }

  void _appendToolBadge(String label) {
    final msgs = List<AiChatMessage>.from(state.messages);
    final last = msgs.last;
    msgs[msgs.length - 1] = last.copyWith(
      tools: [...last.tools, label],
    );
    state = state.copyWith(messages: msgs);
  }

  void _replaceLastAssistant(String content) {
    final msgs = List<AiChatMessage>.from(state.messages);
    msgs[msgs.length - 1] = msgs.last.copyWith(content: content);
    state = state.copyWith(messages: msgs);
  }

  static String _toolLabel(String tool) {
    const map = {
      'get_expenses': 'Fetching expenses',
      'get_income': 'Fetching income',
      'get_monthly_summary': 'Loading monthly summary',
      'get_spending_summary': 'Loading spending breakdown',
      'get_loans_and_emis': 'Fetching loans & EMIs',
      'get_credit_cards': 'Fetching credit cards',
      'get_investments': 'Fetching investments',
      'get_financial_summary': 'Loading financial overview',
      'get_upcoming_commitments': 'Loading upcoming commitments',
      'compare_period': 'Comparing periods',
    };
    return map[tool] ?? tool;
  }
}

class AiChatState {
  final List<AiChatMessage> messages;
  final bool loading;
  final String toolStatus;

  const AiChatState({
    this.messages = const [],
    this.loading = false,
    this.toolStatus = '',
  });

  AiChatState copyWith({
    List<AiChatMessage>? messages,
    bool? loading,
    String? toolStatus,
  }) =>
      AiChatState(
        messages: messages ?? this.messages,
        loading: loading ?? this.loading,
        toolStatus: toolStatus ?? this.toolStatus,
      );
}

final aiChatProvider =
    StateNotifierProvider.autoDispose<AiChatNotifier, AiChatState>(
  (ref) => AiChatNotifier(ref.read(aiChatServiceProvider)),
);
