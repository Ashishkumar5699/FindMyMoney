import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';
import '../../drinkup/drinkup_module.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      _MoreItem(
        label: 'Loans & EMIs',
        icon: Icons.account_balance_outlined,
        color: AppTheme.emi,
        route: '/loans-emis',
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
        label: 'Peer Loans',
        icon: Icons.handshake_outlined,
        color: const Color(0xFF9C27B0),
        route: '/peer-loans',
      ),
      _MoreItem(
        label: 'Khata',
        icon: Icons.menu_book_outlined,
        color: const Color(0xFFE67E22),
        route: '/khata',
      ),
      _MoreItem(
        label: 'Statement',
        icon: Icons.bar_chart_outlined,
        color: AppTheme.textSecondary,
        route: '/statement',
      ),
      _MoreItem(
        label: 'Settings',
        icon: Icons.settings_outlined,
        color: const Color(0xFF607D8B),
        route: '/settings',
      ),
      _MoreItem(
        label: 'Finance AI',
        icon: Icons.auto_awesome_outlined,
        color: const Color(0xFF6C63FF),
        route: '/ai-chat',
      ),
      _MoreItem(
        label: 'BKC',
        icon: Icons.local_bar_outlined,
        color: const Color(0xFFFF6B35),
        onTap: (ctx) => Navigator.of(ctx).push(
          MaterialPageRoute(builder: (_) => const BkcApp()),
        ),
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
  final String? route;
  final void Function(BuildContext)? onTap;

  const _MoreItem({
    required this.label,
    required this.icon,
    required this.color,
    this.route,
    this.onTap,
  });
}

class _MoreCard extends StatelessWidget {
  final _MoreItem item;

  const _MoreCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (item.onTap != null) {
          item.onTap!(context);
        } else if (item.route != null) {
          context.go(item.route!);
        }
      },
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
