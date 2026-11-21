import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:findmymoney/features/dashboard/widgets/suggestions_card.dart';

Widget _card(SpendingSuggestions value) => ProviderScope(
      overrides: [spendingSuggestionsProvider.overrideWith((ref) async => value)],
      child: const MaterialApp(home: Scaffold(body: SuggestionsCard())),
    );

void main() {
  testWidgets('shows the tips as a numbered list when ready', (tester) async {
    await tester.pumpWidget(_card(const SpendingSuggestions(
      status: 'ready',
      suggestions: ['Eating out rose 40%.', 'Shopping fell, keep it up.'],
    )));
    await tester.pumpAndSettle();

    expect(find.text('1.'), findsOneWidget);
    expect(find.text('Eating out rose 40%.'), findsOneWidget);
    expect(find.text('2.'), findsOneWidget);
    expect(find.text(notReadyMessage), findsNothing);
  });

  testWidgets('shows the not-ready line, not an error, when no model is up', (tester) async {
    await tester.pumpWidget(_card(const SpendingSuggestions.notReady()));
    await tester.pumpAndSettle();

    expect(find.text(notReadyMessage), findsOneWidget);
    expect(find.text('1.'), findsNothing);
  });

  test('parses the server shape and treats unknown or empty as not ready', () {
    final ready = SpendingSuggestions.fromJson({'status': 'ready', 'suggestions': ['a', 'b'], 'message': null});
    final empty = SpendingSuggestions.fromJson({'status': 'ready', 'suggestions': []});
    final missing = SpendingSuggestions.fromJson({});

    expect(ready.isReady, isTrue);
    expect(ready.suggestions, ['a', 'b']);
    expect(empty.isReady, isFalse);
    expect(missing.status, 'not_ready');
  });
}
