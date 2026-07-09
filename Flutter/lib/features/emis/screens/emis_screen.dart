import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/emi.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/emi_provider.dart';

class EmisScreen extends ConsumerStatefulWidget {
  const EmisScreen({super.key});

  @override
  ConsumerState<EmisScreen> createState() => _EmisScreenState();
}

class _EmisScreenState extends ConsumerState<EmisScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  void _load() {
    final user = ref.read(authProvider).user;
    if (user == null) return;
    ref.read(emiProvider.notifier).load(user.id);
  }

  Future<void> _delete(Emi emi) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Delete EMI'),
        content: Text('Delete "${emi.loanName}"?'),
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
    final ok = await ref.read(emiProvider.notifier).delete(emi.id);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Failed to delete EMI')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(emiProvider);
    final activeEmis = state.emis.where((e) => e.status == 'Active').toList();
    final completedEmis =
        state.emis.where((e) => e.status != 'Active').toList();
    final totalMonthly =
        activeEmis.fold(0.0, (s, e) => s + e.emiAmount);

    return Scaffold(
      appBar: AppBar(title: const Text('EMIs & Loans')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.push('/emis/add');
          _load();
        },
        backgroundColor: AppTheme.emi,
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
                      color: AppTheme.emi.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: AppTheme.emi.withValues(alpha: 0.3)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _StatItem(
                          label: 'Active EMIs',
                          value: '${activeEmis.length}',
                          color: AppTheme.emi,
                        ),
                        _StatItem(
                          label: 'Monthly Outflow',
                          value:
                              '₹${NumberFormat('#,##0').format(totalMonthly)}',
                          color: AppTheme.expense,
                        ),
                        _StatItem(
                          label: 'Completed',
                          value: '${completedEmis.length}',
                          color: AppTheme.income,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  if (activeEmis.isEmpty && completedEmis.isEmpty)
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text('No EMIs added yet',
                            style:
                                TextStyle(color: AppTheme.textSecondary)),
                      ),
                    ),

                  if (activeEmis.isNotEmpty) ...[
                    const Text('Active',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.textSecondary)),
                    const SizedBox(height: 8),
                    ...activeEmis.map((e) => _EmiCard(
                          emi: e,
                          onEdit: () async {
                            await context.push('/emis/edit/${e.id}');
                            _load();
                          },
                          onDelete: () => _delete(e),
                        )),
                  ],

                  if (completedEmis.isNotEmpty) ...[
                    const SizedBox(height: 16),
                    const Text('Completed / Paused',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.textSecondary)),
                    const SizedBox(height: 8),
                    ...completedEmis.map((e) => _EmiCard(
                          emi: e,
                          onEdit: () async {
                            await context.push('/emis/edit/${e.id}');
                            _load();
                          },
                          onDelete: () => _delete(e),
                        )),
                  ],
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
                  color: color, fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(label,
              style: const TextStyle(
                  color: AppTheme.textSecondary, fontSize: 11)),
        ],
      );
}

class _EmiCard extends StatelessWidget {
  final Emi emi;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _EmiCard(
      {required this.emi, required this.onEdit, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    final fmt = NumberFormat('#,##0.00');
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
                      Text(emi.loanName,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(emi.bankName,
                          style: const TextStyle(
                              color: AppTheme.textSecondary, fontSize: 12)),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: (emi.status == 'Active'
                            ? AppTheme.income
                            : AppTheme.textSecondary)
                        .withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(emi.status,
                      style: TextStyle(
                          color: emi.status == 'Active'
                              ? AppTheme.income
                              : AppTheme.textSecondary,
                          fontSize: 11,
                          fontWeight: FontWeight.w600)),
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
            // Progress bar
            LinearProgressIndicator(
              value: emi.progressRatio,
              backgroundColor: AppTheme.emi.withValues(alpha: 0.2),
              valueColor:
                  const AlwaysStoppedAnimation<Color>(AppTheme.emi),
              minHeight: 6,
              borderRadius: BorderRadius.circular(3),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${emi.paidEmis}/${emi.totalEmis} EMIs paid',
                    style: const TextStyle(
                        color: AppTheme.textSecondary, fontSize: 12)),
                Text('${(emi.progressRatio * 100).toStringAsFixed(0)}%',
                    style: const TextStyle(
                        color: AppTheme.emi, fontSize: 12, fontWeight: FontWeight.w600)),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _InfoChip(
                      label: 'EMI', value: '₹${fmt.format(emi.emiAmount)}'),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _InfoChip(
                      label: 'Remaining',
                      value: '₹${fmt.format(emi.remainingAmount)}'),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _InfoChip(
                      label: 'Due',
                      value:
                          DateFormat('dd MMM').format(emi.nextDueDate)),
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
