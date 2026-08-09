import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/expense.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/expense_provider.dart';

class ExpensesScreen extends ConsumerStatefulWidget {
  const ExpensesScreen({super.key});

  @override
  ConsumerState<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends ConsumerState<ExpensesScreen> {
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
    ref.read(expenseProvider.notifier).load(
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

  Future<void> _delete(Expense e) async {
    final ok = await ref.read(expenseProvider.notifier).delete(e.id);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to delete expense')),
      );
    }
  }

  /// Groups expenses by calendar day (most recent first).
  Map<DateTime, List<Expense>> _groupByDate(List<Expense> expenses) {
    final map = <DateTime, List<Expense>>{};
    for (final e in expenses) {
      final day = DateTime(e.date.year, e.date.month, e.date.day);
      map.putIfAbsent(day, () => []).add(e);
    }
    final sorted = map.keys.toList()..sort((a, b) => b.compareTo(a));
    return {for (final k in sorted) k: map[k]!};
  }

  String _dayLabel(DateTime day) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    if (day == today) return 'Today';
    if (day == yesterday) return 'Yesterday';
    // e.g. "Monday, 7 Aug"
    return DateFormat('EEEE, d MMM').format(day);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(expenseProvider);
    final total = state.expenses.fold(0.0, (s, e) => s + e.amount);
    final fmt = NumberFormat('#,##0.00');
    final grouped = _groupByDate(state.expenses);
    final days = grouped.keys.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(52),
          child: _MonthNavigator(
            period: _period,
            onPrev: _prevMonth,
            onNext: _nextMonth,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.push('/expenses/add');
          _load();
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          // Total summary card
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            decoration: BoxDecoration(
              color: AppTheme.expense.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppTheme.expense.withValues(alpha: 0.3)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Total Expenses',
                    style: TextStyle(color: AppTheme.textSecondary)),
                Text('₹${fmt.format(total)}',
                    style: const TextStyle(
                        color: AppTheme.expense,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),

          Expanded(
            child: state.isLoading
                ? const Center(child: CircularProgressIndicator())
                : state.expenses.isEmpty
                    ? const Center(
                        child: Text('No expenses for this month',
                            style: TextStyle(color: AppTheme.textSecondary)))
                    : RefreshIndicator(
                        onRefresh: () async => _load(),
                        child: ListView.builder(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 100),
                          itemCount: days.length,
                          itemBuilder: (_, i) {
                            final day = days[i];
                            final dayExpenses = grouped[day]!;
                            final dayTotal = dayExpenses.fold(
                                0.0, (s, e) => s + e.amount);
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Date group header
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 16, bottom: 6),
                                  child: Row(
                                    children: [
                                      Text(
                                        _dayLabel(day),
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: AppTheme.textSecondary,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        '₹${NumberFormat('#,##0.00').format(dayTotal)}',
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: AppTheme.expense,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Expenses for this day
                                ...dayExpenses.map((e) => Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8),
                                      child: _ExpenseCard(
                                        expense: e,
                                        onEdit: () async {
                                          await context
                                              .push('/expenses/edit/${e.id}');
                                          _load();
                                        },
                                        onDelete: () => _delete(e),
                                      ),
                                    )),
                              ],
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

class _MonthNavigator extends StatelessWidget {
  final DateTime period;
  final VoidCallback onPrev;
  final VoidCallback onNext;

  const _MonthNavigator(
      {required this.period, required this.onPrev, required this.onNext});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final isCurrentMonth =
        period.year == now.year && period.month == now.month;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: onPrev, icon: const Icon(Icons.chevron_left)),
          Text(
            DateFormat('MMMM yyyy').format(period),
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          IconButton(
            onPressed: isCurrentMonth ? null : onNext,
            icon: Icon(Icons.chevron_right,
                color: isCurrentMonth ? AppTheme.textSecondary : null),
          ),
        ],
      ),
    );
  }
}

class _ExpenseCard extends StatelessWidget {
  final Expense expense;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _ExpenseCard(
      {required this.expense, required this.onEdit, required this.onDelete});

  @override
  Widget build(BuildContext context) => Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: AppTheme.expense.withValues(alpha: 0.15),
            child: const Icon(Icons.trending_down,
                color: AppTheme.expense, size: 18),
          ),
          title: Text(expense.category,
              style: const TextStyle(fontWeight: FontWeight.w500)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (expense.subCategory.isNotEmpty)
                Text(expense.subCategory,
                    style: const TextStyle(
                        color: AppTheme.primary, fontSize: 11)),
              if (expense.description.isNotEmpty)
                Text(expense.description,
                    style: const TextStyle(
                        color: AppTheme.textSecondary, fontSize: 12),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '₹${NumberFormat('#,##0.00').format(expense.amount)}',
                style: const TextStyle(
                    color: AppTheme.expense,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
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
        ),
      );
}
