import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_theme.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/card_offer_provider.dart';

const _categories = [
  ('fuel', Icons.local_gas_station),
  ('groceries', Icons.shopping_basket),
  ('dining', Icons.restaurant),
  ('travel', Icons.flight),
  ('online', Icons.laptop),
  ('entertainment', Icons.movie),
  ('utilities', Icons.bolt),
  ('health', Icons.local_hospital),
  ('education', Icons.school),
];

class SuggestCardScreen extends ConsumerStatefulWidget {
  const SuggestCardScreen({super.key});

  @override
  ConsumerState<SuggestCardScreen> createState() => _SuggestCardScreenState();
}

class _SuggestCardScreenState extends ConsumerState<SuggestCardScreen> {
  String? _selectedCategory;

  void _suggest(String category) {
    final user = ref.read(authProvider).user;
    if (user == null) return;
    setState(() => _selectedCategory = category);
    ref.read(cardOfferProvider.notifier).suggestCard(user.id, category);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(cardOfferProvider);

    return Scaffold(
      backgroundColor: AppTheme.card,
      appBar: AppBar(
        backgroundColor: AppTheme.surface,
        title: const Text('Best Card to Use'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('What are you spending on?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            const SizedBox(height: 16),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: _categories.map((c) {
                final isSelected = _selectedCategory == c.$1;
                return GestureDetector(
                  onTap: () => _suggest(c.$1),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      color: isSelected ? AppTheme.primary : AppTheme.surface,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: isSelected
                            ? AppTheme.primary
                            : AppTheme.textSecondary.withValues(alpha: 0.3),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(c.$2,
                            size: 16,
                            color: isSelected
                                ? Colors.white
                                : AppTheme.textSecondary),
                        const SizedBox(width: 6),
                        Text(
                          c.$1[0].toUpperCase() + c.$1.substring(1),
                          style: TextStyle(
                            color: isSelected
                                ? Colors.white
                                : AppTheme.textSecondary,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 24),
            if (state.isSuggesting)
              const Center(child: CircularProgressIndicator())
            else if (state.error != null && _selectedCategory != null)
              Center(
                child: Column(
                  children: [
                    const Icon(Icons.credit_card_off,
                        size: 48, color: Colors.grey),
                    const SizedBox(height: 8),
                    Text(state.error!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: AppTheme.textSecondary)),
                  ],
                ),
              )
            else if (state.suggestion != null)
              _suggestionCard(),
          ],
        ),
      ),
    );
  }

  Widget _suggestionCard() {
    final s = ref.watch(cardOfferProvider).suggestion!;
    return Card(
      color: AppTheme.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppTheme.primary.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.credit_card,
                    color: AppTheme.primary, size: 28),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(s.cardName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    if (s.bankName != null)
                      Text(s.bankName!,
                          style: const TextStyle(
                              color: AppTheme.textSecondary, fontSize: 13)),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppTheme.income.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  s.cashbackPercent > 0
                      ? '${s.cashbackPercent}% back'
                      : '${s.rewardPoints}x pts',
                  style: TextStyle(
                      color: AppTheme.income,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ),
            ]),
            const SizedBox(height: 12),
            Text(s.reason,
                style: const TextStyle(color: AppTheme.textSecondary)),
            if (s.relevantOffers.isNotEmpty) ...[
              const SizedBox(height: 12),
              const Divider(),
              const SizedBox(height: 8),
              Text('Active offers (${s.relevantOffers.length})',
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 13)),
              const SizedBox(height: 6),
              ...s.relevantOffers.map((o) => Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Row(children: [
                      const Icon(Icons.check_circle,
                          size: 14, color: AppTheme.income),
                      const SizedBox(width: 6),
                      Expanded(
                          child: Text(o.title,
                              style: const TextStyle(fontSize: 13))),
                    ]),
                  )),
            ],
          ],
        ),
      ),
    );
  }
}
