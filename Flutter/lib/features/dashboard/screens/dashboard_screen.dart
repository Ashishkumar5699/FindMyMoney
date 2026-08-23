import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/di/providers.dart';
import '../../../core/services/sms_scanner_service.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/expense.dart';
import '../../../domain/models/income.dart';
import '../../auth/providers/auth_provider.dart';
import '../../expenses/providers/expense_provider.dart';
import '../../incomes/providers/income_provider.dart';
import '../../emis/providers/emi_provider.dart';
import '../../sms_review/providers/sms_review_provider.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadData();
      _initSmsScanner();
    });
  }

  void _loadData() {
    final user = ref.read(authProvider).user;
    if (user == null) return;
    final now = DateTime.now();
    ref.read(expenseProvider.notifier).load(user.id, year: now.year, month: now.month);
    ref.read(incomeProvider.notifier).load(user.id, year: now.year, month: now.month);
    ref.read(emiProvider.notifier).load(user.id);
  }

  Future<void> _initSmsScanner() async {
    final dio = ref.read(dioProvider);
    final granted = await SmsScannerService.instance.requestPermissions();
    if (!granted) return;
    await SmsScannerService.instance.startListening(dio, (_) {
      // Refresh badge count when a new SMS transaction is detected
      ref.invalidate(smsPendingCountProvider);
    });
    // Scan recent inbox on first open (fire-and-forget)
    SmsScannerService.instance.scanInbox(dio);
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authProvider).user;
    final expenseState = ref.watch(expenseProvider);
    final incomeState = ref.watch(incomeProvider);
    final emiState = ref.watch(emiProvider);
    final pendingCount = ref.watch(smsPendingCountProvider).valueOrNull ?? 0;

    final totalExpense =
        expenseState.expenses.fold(0.0, (s, e) => s + e.amount);
    final totalIncome =
        incomeState.incomes.fold(0.0, (s, i) => s + i.amount);
    final activeEmis =
        emiState.emis.where((e) => e.status == 'Active').length;
    final totalEmiAmount = emiState.emis
        .where((e) => e.status == 'Active')
        .fold(0.0, (s, e) => s + e.emiAmount);

    final fmt = NumberFormat('#,##0.00');
    final month = DateFormat('MMMM yyyy').format(DateTime.now());

    final recentExpenses = expenseState.expenses.take(5).toList();
    final recentIncomes = incomeState.incomes.take(3).toList();

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello, ${user?.username ?? 'there'} 👋',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(month,
                style: const TextStyle(
                    fontSize: 12, color: AppTheme.textSecondary)),
          ],
        ),
        actions: [
          if (pendingCount > 0)
            IconButton(
              tooltip: '$pendingCount AI-detected transactions',
              onPressed: () => context.push('/sms-review'),
              icon: Badge(
                label: Text('$pendingCount'),
                child: const Icon(Icons.sms_outlined),
              ),
            ),
          IconButton(
            icon: const Icon(Icons.logout_outlined),
            onPressed: () async {
              await ref.read(authProvider.notifier).logout();
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async => _loadData(),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Balance card
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppTheme.primary, AppTheme.primaryDark],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Net Balance',
                      style: TextStyle(color: Colors.white70, fontSize: 13)),
                  const SizedBox(height: 8),
                  Text(
                    '₹${fmt.format(totalIncome - totalExpense)}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: _MiniStat(
                          label: 'Income',
                          value: '₹${fmt.format(totalIncome)}',
                          icon: Icons.arrow_upward,
                          color: AppTheme.income,
                        ),
                      ),
                      Expanded(
                        child: _MiniStat(
                          label: 'Expense',
                          value: '₹${fmt.format(totalExpense)}',
                          icon: Icons.arrow_downward,
                          color: AppTheme.expense,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // EMI overview
            if (activeEmis > 0)
              Card(
                child: ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppTheme.emi.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.credit_card, color: AppTheme.emi),
                  ),
                  title: Text('$activeEmis Active EMI${activeEmis > 1 ? 's' : ''}'),
                  subtitle: Text(
                    'Total monthly: ₹${fmt.format(totalEmiAmount)}',
                    style: const TextStyle(color: AppTheme.textSecondary),
                  ),
                  trailing: TextButton(
                    onPressed: () => context.go('/emis'),
                    child: const Text('View'),
                  ),
                ),
              ),

            const SizedBox(height: 16),

            // Quick actions
            Row(
              children: [
                _QuickAction(
                  label: 'Add Expense',
                  icon: Icons.remove_circle_outline,
                  color: AppTheme.expense,
                  onTap: () => context.go('/expenses/add'),
                ),
                const SizedBox(width: 12),
                _QuickAction(
                  label: 'Add Income',
                  icon: Icons.add_circle_outline,
                  color: AppTheme.income,
                  onTap: () => context.go('/incomes/add'),
                ),
                const SizedBox(width: 12),
                _QuickAction(
                  label: 'Add EMI',
                  icon: Icons.credit_card_outlined,
                  color: AppTheme.emi,
                  onTap: () => context.go('/emis/add'),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Recent expenses
            _SectionHeader(
              title: 'Recent Expenses',
              onSeeAll: () => context.go('/expenses'),
            ),
            if (expenseState.isLoading)
              const Center(child: CircularProgressIndicator())
            else if (recentExpenses.isEmpty)
              _EmptyHint('No expenses this month')
            else
              ...recentExpenses
                  .map((e) => _ExpenseTile(expense: e)),

            const SizedBox(height: 20),

            // Recent incomes
            _SectionHeader(
              title: 'Recent Income',
              onSeeAll: () => context.go('/incomes'),
            ),
            if (incomeState.isLoading)
              const Center(child: CircularProgressIndicator())
            else if (recentIncomes.isEmpty)
              _EmptyHint('No income this month')
            else
              ...recentIncomes.map((i) => _IncomeTile(income: i)),

            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}

class _MiniStat extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;

  const _MiniStat({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Icon(icon, color: color, size: 16),
          const SizedBox(width: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label,
                  style: const TextStyle(color: Colors.white70, fontSize: 11)),
              Text(value,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600)),
            ],
          ),
        ],
      );
}

class _QuickAction extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _QuickAction({
    required this.label,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) => Expanded(
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 14),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: color.withValues(alpha: 0.3)),
            ),
            child: Column(
              children: [
                Icon(icon, color: color, size: 24),
                const SizedBox(height: 6),
                Text(label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: color,
                        fontSize: 11,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ),
      );
}

class _SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onSeeAll;

  const _SectionHeader({required this.title, required this.onSeeAll});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold)),
            TextButton(onPressed: onSeeAll, child: const Text('See all')),
          ],
        ),
      );
}

class _EmptyHint extends StatelessWidget {
  final String text;
  const _EmptyHint(this.text);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Text(text,
            style: const TextStyle(color: AppTheme.textSecondary)),
      );
}

class _ExpenseTile extends StatelessWidget {
  final Expense expense;
  const _ExpenseTile({required this.expense});

  @override
  Widget build(BuildContext context) => Card(
        margin: const EdgeInsets.only(bottom: 8),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: AppTheme.expense.withValues(alpha: 0.15),
            child: const Icon(Icons.trending_down, color: AppTheme.expense, size: 18),
          ),
          title: Text(expense.category,
              style: const TextStyle(fontWeight: FontWeight.w500)),
          subtitle: Text(
            expense.description.isNotEmpty
                ? expense.description
                : expense.subCategory,
            style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('₹${NumberFormat('#,##0.00').format(expense.amount)}',
                  style: const TextStyle(
                      color: AppTheme.expense, fontWeight: FontWeight.bold)),
              Text(DateFormat('dd MMM').format(expense.date),
                  style: const TextStyle(
                      color: AppTheme.textSecondary, fontSize: 11)),
            ],
          ),
        ),
      );
}

class _IncomeTile extends StatelessWidget {
  final Income income;
  const _IncomeTile({required this.income});

  @override
  Widget build(BuildContext context) => Card(
        margin: const EdgeInsets.only(bottom: 8),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: AppTheme.income.withValues(alpha: 0.15),
            child: const Icon(Icons.trending_up, color: AppTheme.income, size: 18),
          ),
          title: Text(income.source,
              style: const TextStyle(fontWeight: FontWeight.w500)),
          subtitle: income.description.isNotEmpty
              ? Text(income.description,
                  style: const TextStyle(
                      color: AppTheme.textSecondary, fontSize: 12),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis)
              : null,
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('₹${NumberFormat('#,##0.00').format(income.amount)}',
                  style: const TextStyle(
                      color: AppTheme.income, fontWeight: FontWeight.bold)),
              Text(DateFormat('dd MMM').format(income.date),
                  style: const TextStyle(
                      color: AppTheme.textSecondary, fontSize: 11)),
            ],
          ),
        ),
      );
}
