import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/api_constants.dart';
import '../../../core/di/providers.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/api/api_client.dart';

const notReadyMessage = 'AI models are not ready yet. Suggestions will show here once they are.';

/// 3–5 AI tips on the user's spending. The server sends only aggregates to the AI and caches the answer for the day.
class SpendingSuggestions {
  final String status; // ready | not_ready | no_data
  final List<String> suggestions;
  final String? message;

  const SpendingSuggestions({required this.status, required this.suggestions, this.message});

  const SpendingSuggestions.notReady()
      : status = 'not_ready',
        suggestions = const [],
        message = notReadyMessage;

  factory SpendingSuggestions.fromJson(Map<String, dynamic> json) => SpendingSuggestions(
        status: json['status'] as String? ?? 'not_ready',
        suggestions: (json['suggestions'] as List? ?? const []).map((e) => e.toString()).toList(),
        message: json['message'] as String?,
      );

  bool get isReady => status == 'ready' && suggestions.isNotEmpty;
}

/// Not ready (no model up, or the server can't be reached) is a normal state, never an error.
final spendingSuggestionsProvider = FutureProvider.autoDispose<SpendingSuggestions>((ref) async {
  try {
    final res = await ref.read(dioProvider).get(ApiConstants.suggestions);
    final data = unwrap(res);
    return data is Map<String, dynamic> ? SpendingSuggestions.fromJson(data) : const SpendingSuggestions.notReady();
  } catch (_) {
    return const SpendingSuggestions.notReady();
  }
});

class SuggestionsCard extends ConsumerWidget {
  const SuggestionsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(spendingSuggestionsProvider);
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text('Suggestions', style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                decoration: BoxDecoration(
                  border: Border.all(color: AppTheme.textSecondary.withValues(alpha: 0.5)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text('AI', style: TextStyle(fontSize: 11, color: AppTheme.textSecondary)),
              ),
            ]),
            const SizedBox(height: 2),
            const Text(
              'From your last three months · only totals are shared with the AI',
              style: TextStyle(fontSize: 12, color: AppTheme.textSecondary),
            ),
            const SizedBox(height: 12),
            state.when(
              loading: () => const Row(children: [
                SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2)),
                SizedBox(width: 10),
                Expanded(
                  child: Text('Looking at your spending… this can take up to a minute.',
                      style: TextStyle(color: AppTheme.textSecondary)),
                ),
              ]),
              error: (_, _) => const Text(notReadyMessage, style: TextStyle(color: AppTheme.textSecondary)),
              data: (s) => s.isReady
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (var i = 0; i < s.suggestions.length; i++)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                              SizedBox(
                                width: 22,
                                child: Text('${i + 1}.',
                                    style: TextStyle(fontWeight: FontWeight.w700, color: theme.colorScheme.primary)),
                              ),
                              Expanded(child: Text(s.suggestions[i])),
                            ]),
                          ),
                      ],
                    )
                  : Text(s.message ?? notReadyMessage, style: const TextStyle(color: AppTheme.textSecondary)),
            ),
          ],
        ),
      ),
    );
  }
}
