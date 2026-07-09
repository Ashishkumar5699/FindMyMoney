import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/statement_summary.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/statement_provider.dart';

class StatementScreen extends ConsumerStatefulWidget {
  const StatementScreen({super.key});

  @override
  ConsumerState<StatementScreen> createState() => _StatementScreenState();
}

class _StatementScreenState extends ConsumerState<StatementScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final user = ref.read(authProvider).user;
      if (user != null) {
        ref.read(statementProvider.notifier).load(user.id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(statementProvider);
    final fmt = NumberFormat('#,##0.00');
    final monthLabel = DateFormat('MMMM yyyy')
        .format(DateTime(state.year, state.month));
    final now = DateTime.now();
    final isCurrentMonth =
        state.month == now.month && state.year == now.year;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Statement'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(52),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () =>
                      ref.read(statementProvider.notifier).prevMonth(),
                  icon: const Icon(Icons.chevron_left),
                ),
                Text(monthLabel,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                IconButton(
                  onPressed: isCurrentMonth
                      ? null
                      : () =>
                          ref.read(statementProvider.notifier).nextMonth(),
                  icon: Icon(Icons.chevron_right,
                      color: isCurrentMonth ? AppTheme.textSecondary : null),
                ),
              ],
            ),
          ),
        ),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : state.summary == null
              ? const Center(
                  child: Text('No data',
                      style: TextStyle(color: AppTheme.textSecondary)))
              : _StatementBody(summary: state.summary!, fmt: fmt),
    );
  }
}

class _StatementBody extends StatelessWidget {
  final StatementSummary summary;
  final NumberFormat fmt;

  const _StatementBody({required this.summary, required this.fmt});

  @override
  Widget build(BuildContext context) {
    final balance = summary.netBalance;
    final balanceColor = balance >= 0 ? AppTheme.income : AppTheme.expense;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Summary cards
        Row(
          children: [
            _SummaryCard(
              label: 'Income',
              value: '₹${fmt.format(summary.totalIncome)}',
              icon: Icons.trending_up,
              color: AppTheme.income,
            ),
            const SizedBox(width: 12),
            _SummaryCard(
              label: 'Expense',
              value: '₹${fmt.format(summary.totalExpense)}',
              icon: Icons.trending_down,
              color: AppTheme.expense,
            ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            color: balanceColor.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(14),
            border:
                Border.all(color: balanceColor.withValues(alpha: 0.3)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Net Balance',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 15)),
              Text(
                '${balance >= 0 ? '+' : ''}₹${fmt.format(balance)}',
                style: TextStyle(
                    color: balanceColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        const SizedBox(height: 24),

        if (summary.expenseByCategory.isEmpty)
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('No expenses this month',
                  style: TextStyle(color: AppTheme.textSecondary)),
            ),
          )
        else ...[
          const Text('Expense by Category',
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          ...summary.expenseByCategory
              .map((c) => _CategoryCard(category: c, fmt: fmt)),
        ],

        const SizedBox(height: 80),
      ],
    );
  }
}

class _SummaryCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;

  const _SummaryCard({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) => Expanded(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: color.withValues(alpha: 0.3)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: color, size: 20),
              const SizedBox(height: 8),
              Text(label,
                  style: const TextStyle(
                      color: AppTheme.textSecondary, fontSize: 12)),
              const SizedBox(height: 4),
              Text(value,
                  style: TextStyle(
                      color: color,
                      fontSize: 17,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      );
}

class _CategoryCard extends StatefulWidget {
  final CategorySummary category;
  final NumberFormat fmt;

  const _CategoryCard({required this.category, required this.fmt});

  @override
  State<_CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<_CategoryCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final cat = widget.category;
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          ListTile(
            title: Row(
              children: [
                Expanded(
                  child: Text(cat.category,
                      style: const TextStyle(fontWeight: FontWeight.w600)),
                ),
                Text('${cat.percentage.toStringAsFixed(1)}%',
                    style: const TextStyle(
                        color: AppTheme.textSecondary, fontSize: 12)),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 6),
                LinearProgressIndicator(
                  value: cat.percentage / 100,
                  backgroundColor: AppTheme.primary.withValues(alpha: 0.15),
                  valueColor:
                      const AlwaysStoppedAnimation<Color>(AppTheme.primary),
                  minHeight: 5,
                  borderRadius: BorderRadius.circular(3),
                ),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('₹${widget.fmt.format(cat.total)}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15)),
                if (cat.subCategories.isNotEmpty)
                  IconButton(
                    icon: Icon(
                      _expanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: AppTheme.textSecondary,
                    ),
                    onPressed: () =>
                        setState(() => _expanded = !_expanded),
                  ),
              ],
            ),
          ),
          if (_expanded && cat.subCategories.isNotEmpty)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: Column(
                children: cat.subCategories
                    .map((s) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Row(
                            children: [
                              const SizedBox(width: 8),
                              const Icon(Icons.subdirectory_arrow_right,
                                  size: 14,
                                  color: AppTheme.textSecondary),
                              const SizedBox(width: 6),
                              Expanded(
                                child: Text(s.subCategory,
                                    style: const TextStyle(
                                        color: AppTheme.textSecondary,
                                        fontSize: 13)),
                              ),
                              Text('₹${widget.fmt.format(s.total)}',
                                  style: const TextStyle(fontSize: 13)),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }
}
