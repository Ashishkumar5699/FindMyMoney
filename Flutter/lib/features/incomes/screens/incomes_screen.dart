import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/income.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/income_provider.dart';

class IncomesScreen extends ConsumerStatefulWidget {
  const IncomesScreen({super.key});

  @override
  ConsumerState<IncomesScreen> createState() => _IncomesScreenState();
}

class _IncomesScreenState extends ConsumerState<IncomesScreen> {
  late DateTime _period;

  @override
  void initState() {
    super.initState();
    _period = DateTime.now();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  void _load() {
    final user = ref.read(authProvider).user;
    if (user == null) return;
    ref.read(incomeProvider.notifier).load(
          user.id,
          year: _period.year,
          month: _period.month,
        );
  }

  void _prevMonth() {
    setState(() => _period = DateTime(_period.year, _period.month - 1));
    _load();
  }

  void _nextMonth() {
    final now = DateTime.now();
    if (_period.year == now.year && _period.month == now.month) return;
    setState(() => _period = DateTime(_period.year, _period.month + 1));
    _load();
  }

  Future<void> _delete(Income i) async {
    final ok = await ref.read(incomeProvider.notifier).delete(i.id);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to delete income')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(incomeProvider);
    final total = state.incomes.fold(0.0, (s, i) => s + i.amount);
    final fmt = NumberFormat('#,##0.00');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Income'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(52),
          child: _MonthNav(period: _period, onPrev: _prevMonth, onNext: _nextMonth),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.push('/incomes/add');
          _load();
        },
        backgroundColor: AppTheme.income,
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            decoration: BoxDecoration(
              color: AppTheme.income.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppTheme.income.withValues(alpha: 0.3)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Total Income',
                    style: TextStyle(color: AppTheme.textSecondary)),
                Text('₹${fmt.format(total)}',
                    style: const TextStyle(
                        color: AppTheme.income,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Expanded(
            child: state.isLoading
                ? const Center(child: CircularProgressIndicator())
                : state.incomes.isEmpty
                    ? const Center(
                        child: Text('No income for this month',
                            style: TextStyle(color: AppTheme.textSecondary)))
                    : RefreshIndicator(
                        onRefresh: () async => _load(),
                        child: ListView.separated(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 100),
                          itemCount: state.incomes.length,
                          separatorBuilder: (_, _) => const SizedBox(height: 8),
                          itemBuilder: (_, idx) {
                            final income = state.incomes[idx];
                            return _IncomeCard(
                              income: income,
                              onEdit: () async {
                                await context.push('/incomes/edit/${income.id}');
                                _load();
                              },
                              onDelete: () => _delete(income),
                            );
                          },
                        ),
                      ),
          ),
        ],
      ),
    );
  }
}

class _MonthNav extends StatelessWidget {
  final DateTime period;
  final VoidCallback onPrev;
  final VoidCallback onNext;

  const _MonthNav({required this.period, required this.onPrev, required this.onNext});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final isCurrent = period.year == now.year && period.month == now.month;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: onPrev, icon: const Icon(Icons.chevron_left)),
          Text(DateFormat('MMMM yyyy').format(period),
              style: const TextStyle(fontWeight: FontWeight.w600)),
          IconButton(
            onPressed: isCurrent ? null : onNext,
            icon: Icon(Icons.chevron_right,
                color: isCurrent ? AppTheme.textSecondary : null),
          ),
        ],
      ),
    );
  }
}

class _IncomeCard extends StatelessWidget {
  final Income income;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _IncomeCard(
      {required this.income, required this.onEdit, required this.onDelete});

  @override
  Widget build(BuildContext context) => Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: AppTheme.income.withValues(alpha: 0.15),
            child:
                const Icon(Icons.trending_up, color: AppTheme.income, size: 18),
          ),
          title: Text(income.source,
              style: const TextStyle(fontWeight: FontWeight.w500)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (income.description.isNotEmpty)
                Text(income.description,
                    style: const TextStyle(
                        color: AppTheme.textSecondary, fontSize: 12),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
              Text(DateFormat('dd MMM yyyy').format(income.date),
                  style: const TextStyle(
                      color: AppTheme.textSecondary, fontSize: 11)),
            ],
          ),
          isThreeLine: false,
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('₹${NumberFormat('#,##0.00').format(income.amount)}',
                  style: const TextStyle(
                      color: AppTheme.income,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
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
        ),
      );
}
