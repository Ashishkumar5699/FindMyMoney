import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/payment_source.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/payment_source_provider.dart';

class PaymentSourcesScreen extends ConsumerStatefulWidget {
  const PaymentSourcesScreen({super.key});

  @override
  ConsumerState<PaymentSourcesScreen> createState() =>
      _PaymentSourcesScreenState();
}

class _PaymentSourcesScreenState extends ConsumerState<PaymentSourcesScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  void _load() {
    final user = ref.read(authProvider).user;
    if (user == null) return;
    ref.read(paymentSourceProvider.notifier).load(user.id);
  }

  Future<void> _delete(PaymentSource source) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Delete Payment Source'),
        content: Text('Delete "${source.name}"?'),
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
    final ok =
        await ref.read(paymentSourceProvider.notifier).delete(source.id);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to delete payment source')));
    }
  }

  Future<void> _toggleStatus(PaymentSource source) async {
    final ok = await ref
        .read(paymentSourceProvider.notifier)
        .toggleStatus(source.id, isActive: !source.isActive);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to update status')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(paymentSourceProvider);
    final fmt = NumberFormat('#,##0.00');

    // Group by type
    final grouped = <String, List<PaymentSource>>{};
    for (final s in state.sources) {
      grouped.putIfAbsent(s.type, () => []).add(s);
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Payment Sources')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.push('/payment-sources/add');
          _load();
        },
        child: const Icon(Icons.add),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: () async => _load(),
              child: state.sources.isEmpty
                  ? const Center(
                      child: Text('No payment sources added yet',
                          style: TextStyle(color: AppTheme.textSecondary)),
                    )
                  : ListView(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
                      children: [
                        for (final entry in grouped.entries) ...[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(entry.key,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppTheme.textSecondary)),
                          ),
                          ...entry.value.map((s) => _SourceCard(
                                source: s,
                                fmt: fmt,
                                onEdit: () async {
                                  await context
                                      .push('/payment-sources/edit/${s.id}');
                                  _load();
                                },
                                onDelete: () => _delete(s),
                                onToggle: () => _toggleStatus(s),
                              )),
                          const SizedBox(height: 8),
                        ],
                      ],
                    ),
            ),
    );
  }
}

class _SourceCard extends StatelessWidget {
  final PaymentSource source;
  final NumberFormat fmt;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final VoidCallback onToggle;

  const _SourceCard({
    required this.source,
    required this.fmt,
    required this.onEdit,
    required this.onDelete,
    required this.onToggle,
  });

  IconData _iconFor(String type) {
    switch (type) {
      case 'CreditCard':
        return Icons.credit_card;
      case 'Cash':
        return Icons.money;
      case 'UPI':
        return Icons.phone_android;
      case 'Wallet':
        return Icons.account_balance_wallet;
      default:
        return Icons.account_balance;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: (source.isActive ? AppTheme.primary : AppTheme.textSecondary)
                    .withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(_iconFor(source.type),
                  color: source.isActive
                      ? AppTheme.primary
                      : AppTheme.textSecondary,
                  size: 22),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(source.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: source.isActive
                                  ? AppTheme.textPrimary
                                  : AppTheme.textSecondary)),
                      if (source.accountLast4 != null) ...[
                        const SizedBox(width: 6),
                        Text('••${source.accountLast4}',
                            style: const TextStyle(
                                color: AppTheme.textSecondary, fontSize: 12)),
                      ],
                    ],
                  ),
                  if (source.bankName != null)
                    Text(source.bankName!,
                        style: const TextStyle(
                            color: AppTheme.textSecondary, fontSize: 12)),
                  const SizedBox(height: 4),
                  Text('₹${fmt.format(source.balance)}',
                      style: TextStyle(
                          color: source.balance >= 0
                              ? AppTheme.income
                              : AppTheme.expense,
                          fontWeight: FontWeight.w600,
                          fontSize: 14)),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: onToggle,
                  style: TextButton.styleFrom(
                    foregroundColor: source.isActive
                        ? AppTheme.expense
                        : AppTheme.income,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    minimumSize: Size.zero,
                  ),
                  child: Text(source.isActive ? 'Close' : 'Reopen',
                      style: const TextStyle(fontSize: 12)),
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
          ],
        ),
      ),
    );
  }
}
