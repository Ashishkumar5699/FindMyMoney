import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/investment.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/investment_provider.dart';

class InvestmentsScreen extends ConsumerStatefulWidget {
  const InvestmentsScreen({super.key});

  @override
  ConsumerState<InvestmentsScreen> createState() => _InvestmentsScreenState();
}

class _InvestmentsScreenState extends ConsumerState<InvestmentsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  void _load() {
    final user = ref.read(authProvider).user;
    if (user == null) return;
    ref.read(investmentProvider.notifier).load(user.id);
  }

  Future<void> _delete(Investment inv) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Delete Investment'),
        content: Text('Delete "${inv.name}"?'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel')),
          TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Delete',
                  style: TextStyle(color: AppTheme.expense))),
        ],
      ),
    );
    if (confirm != true) return;
    final ok = await ref.read(investmentProvider.notifier).delete(inv.id);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to delete investment')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(investmentProvider);
    final fmt = NumberFormat('#,##0.00');
    final totalInvested =
        state.investments.fold(0.0, (s, i) => s + i.amount);
    final totalCurrent =
        state.investments.fold(0.0, (s, i) => s + i.currentValue);
    final totalPL = totalCurrent - totalInvested;

    return Scaffold(
      appBar: AppBar(title: const Text('Investments')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.push('/investments/add');
          _load();
        },
        child: const Icon(Icons.add),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: () async => _load(),
              child: ListView(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
                children: [
                  // Summary card
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppTheme.primary.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: AppTheme.primary.withValues(alpha: 0.3)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _StatItem(
                          label: 'Invested',
                          value: '₹${NumberFormat('#,##0').format(totalInvested)}',
                          color: AppTheme.primary,
                        ),
                        _StatItem(
                          label: 'Current',
                          value: '₹${NumberFormat('#,##0').format(totalCurrent)}',
                          color: AppTheme.textPrimary,
                        ),
                        _StatItem(
                          label: 'P&L',
                          value:
                              '${totalPL >= 0 ? '+' : ''}₹${NumberFormat('#,##0').format(totalPL)}',
                          color:
                              totalPL >= 0 ? AppTheme.income : AppTheme.expense,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  if (state.investments.isEmpty)
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text('No investments added yet',
                            style: TextStyle(color: AppTheme.textSecondary)),
                      ),
                    ),
                  ...state.investments.map((inv) => _InvestmentCard(
                        investment: inv,
                        fmt: fmt,
                        onEdit: () async {
                          await context.push('/investments/edit/${inv.id}');
                          _load();
                        },
                        onDelete: () => _delete(inv),
                      )),
                ],
              ),
            ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _StatItem(
      {required this.label, required this.value, required this.color});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Text(value,
              style: TextStyle(
                  color: color, fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(label,
              style: const TextStyle(
                  color: AppTheme.textSecondary, fontSize: 11)),
        ],
      );
}

class _InvestmentCard extends StatelessWidget {
  final Investment investment;
  final NumberFormat fmt;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _InvestmentCard({
    required this.investment,
    required this.fmt,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final pl = investment.profitLoss;
    final plColor = pl >= 0 ? AppTheme.income : AppTheme.expense;
    final plSign = pl >= 0 ? '+' : '';

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(investment.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(investment.type,
                          style: const TextStyle(
                              color: AppTheme.textSecondary, fontSize: 12)),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: plColor.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '$plSign₹${fmt.format(pl)} ($plSign${investment.profitLossPercent.toStringAsFixed(1)}%)',
                    style: TextStyle(
                        color: plColor,
                        fontSize: 11,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert,
                      color: AppTheme.textSecondary, size: 18),
                  onSelected: (v) {
                    if (v == 'edit') onEdit();
                    if (v == 'delete') onDelete();
                  },
                  itemBuilder: (_) => [
                    const PopupMenuItem(value: 'edit', child: Text('Edit')),
                    const PopupMenuItem(
                        value: 'delete',
                        child: Text('Delete',
                            style: TextStyle(color: AppTheme.expense))),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _InfoChip(
                      label: 'Invested',
                      value: '₹${fmt.format(investment.amount)}'),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _InfoChip(
                      label: 'Current',
                      value: '₹${fmt.format(investment.currentValue)}'),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _InfoChip(
                      label: 'Date',
                      value: DateFormat('dd MMM yy').format(investment.date)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final String label;
  final String value;

  const _InfoChip({required this.label, required this.value});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: AppTheme.surface,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(label,
                style: const TextStyle(
                    color: AppTheme.textSecondary, fontSize: 10)),
            const SizedBox(height: 2),
            Text(value,
                style: const TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 12)),
          ],
        ),
      );
}
