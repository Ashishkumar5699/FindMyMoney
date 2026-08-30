import 'package:flutter/material.dart';
import '../models/drink_models.dart';
import '../../../shared/theme/app_theme.dart';

class DrinkDetailScreen extends StatelessWidget {
  final DrinkRecipe drink;
  const DrinkDetailScreen({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 220,
            pinned: true,
            backgroundColor: AppTheme.background,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF1A1A2E), AppTheme.background],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 56),
                    Text(drink.emoji, style: const TextStyle(fontSize: 64)),
                    const SizedBox(height: 10),
                    Text(drink.name,
                        style: const TextStyle(
                            color: AppTheme.textPrimary,
                            fontSize: 26,
                            fontWeight: FontWeight.bold)),
                    Text(drink.tagline,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: AppTheme.textSecondary, fontSize: 13)),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                // Meta chips
                Wrap(
                  spacing: 8,
                  runSpacing: 6,
                  children: [
                    _MetaChip(Icons.local_bar,   drink.categoryLabel),
                    _MetaChip(Icons.celebration, drink.occasion),
                    _MetaChip(Icons.bar_chart,   drink.difficulty),
                    _MetaChip(Icons.timer,        '${drink.prepMinutes} min'),
                  ],
                ),

                const SizedBox(height: 28),

                // Ingredients
                _SectionTitle('Ingredients'),
                const SizedBox(height: 12),
                ...drink.ingredients.map((ing) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      width: 8,
                      height: 8,
                      margin: const EdgeInsets.only(top: 6, right: 12),
                      decoration: const BoxDecoration(
                          color: AppTheme.primary, shape: BoxShape.circle),
                    ),
                    Expanded(
                      child: Text(ing,
                          style: const TextStyle(color: AppTheme.textPrimary, fontSize: 14, height: 1.4)),
                    ),
                  ]),
                )),

                const SizedBox(height: 28),

                // Steps
                _SectionTitle('How to make it'),
                const SizedBox(height: 12),
                ...drink.steps.asMap().entries.map((e) => Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      width: 28,
                      height: 28,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: AppTheme.primary.withValues(alpha: 0.15),
                        shape: BoxShape.circle,
                        border: Border.all(color: AppTheme.primary, width: 1.5),
                      ),
                      child: Center(
                        child: Text('${e.key + 1}',
                            style: const TextStyle(
                                color: AppTheme.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 13)),
                      ),
                    ),
                    Expanded(
                      child: Text(e.value,
                          style: const TextStyle(
                              color: AppTheme.textPrimary, fontSize: 14, height: 1.5)),
                    ),
                  ]),
                )),

                const SizedBox(height: 28),

                // Tags
                Wrap(
                  spacing: 8,
                  children: drink.tags.map((t) => Chip(
                    label: Text('#$t', style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                    backgroundColor: AppTheme.surfaceCard,
                    side: BorderSide.none,
                    padding: EdgeInsets.zero,
                  )).toList(),
                ),

                const SizedBox(height: 32),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String text;
  const _SectionTitle(this.text);

  @override
  Widget build(BuildContext context) => Text(
    text.toUpperCase(),
    style: const TextStyle(
        color: AppTheme.primary,
        fontSize: 11,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.2),
  );
}

class _MetaChip extends StatelessWidget {
  final IconData icon;
  final String label;
  const _MetaChip(this.icon, this.label);

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(
      color: AppTheme.surfaceCard,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: AppTheme.primary.withValues(alpha: 0.3)),
    ),
    child: Row(mainAxisSize: MainAxisSize.min, children: [
      Icon(icon, size: 13, color: AppTheme.primary),
      const SizedBox(width: 5),
      Text(label, style: const TextStyle(color: AppTheme.textPrimary, fontSize: 12)),
    ]),
  );
}
