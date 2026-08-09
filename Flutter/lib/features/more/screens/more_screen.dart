import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      _MoreItem(
        label: 'EMIs',
        icon: Icons.credit_card_outlined,
        color: AppTheme.emi,
        route: '/emis',
      ),
      _MoreItem(
        label: 'Investments',
        icon: Icons.trending_up_outlined,
        color: AppTheme.income,
        route: '/investments',
      ),
      _MoreItem(
        label: 'Transfers',
        icon: Icons.swap_horiz_outlined,
        color: AppTheme.primary,
        route: '/transfers',
      ),
      _MoreItem(
        label: 'Loans',
        icon: Icons.handshake_outlined,
        color: AppTheme.expense,
        route: '/loans',
      ),
      _MoreItem(
        label: 'Categories',
        icon: Icons.category_outlined,
        color: const Color(0xFF9B59B6),
        route: '/categories',
      ),
      _MoreItem(
        label: 'Payment Sources',
        icon: Icons.account_balance_wallet_outlined,
        color: const Color(0xFF1ABC9C),
        route: '/payment-sources',
      ),
      _MoreItem(
        label: 'Statement',
        icon: Icons.bar_chart_outlined,
        color: AppTheme.textSecondary,
        route: '/statement',
      ),
      _MoreItem(
        label: 'Khata',
        icon: Icons.menu_book_outlined,
        color: const Color(0xFFE67E22),
        route: '/khata',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('More')),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 14,
          mainAxisSpacing: 14,
          childAspectRatio: 0.9,
        ),
        itemCount: items.length,
        itemBuilder: (_, i) => _MoreCard(item: items[i]),
      ),
    );
  }
}

class _MoreItem {
  final String label;
  final IconData icon;
  final Color color;
  final String route;

  const _MoreItem({
    required this.label,
    required this.icon,
    required this.color,
    required this.route,
  });
}

class _MoreCard extends StatelessWidget {
  final _MoreItem item;

  const _MoreCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(item.route),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.card,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: item.color.withValues(alpha: 0.25), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: item.color.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(item.icon, color: item.color, size: 26),
            ),
            const SizedBox(height: 10),
            Text(
              item.label,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.textPrimary),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
