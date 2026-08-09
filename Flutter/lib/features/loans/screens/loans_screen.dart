import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/loan.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/loan_provider.dart';

class LoansScreen extends ConsumerStatefulWidget {
  const LoansScreen({super.key});

  @override
  ConsumerState<LoansScreen> createState() => _LoansScreenState();
}

class _LoansScreenState extends ConsumerState<LoansScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _load() {
    final user = ref.read(authProvider).user;
    if (user == null) return;
    ref.read(loanProvider.notifier).load(user.id);
  }

  Future<void> _delete(Loan loan) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Delete Loan'),
        content: Text('Delete loan with ${loan.contactName}?'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel')),
          TextButton(
              onPressed: () => Navigator.pop(context, true),
              child:
                  const Text('Delete', style: TextStyle(color: AppTheme.expense))),
        ],
      ),
    );
    if (confirm != true) return;
    final ok = await ref.read(loanProvider.notifier).delete(loan.id);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Failed to delete loan')));
    }
  }

  void _showPaySheet(Loan loan) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppTheme.card,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => _PayLoanSheet(
        loan: loan,
        onPay: (amount) async {
          final ok = await ref
              .read(loanProvider.notifier)
              .pay(loan.id, amount: amount);
          if (!ok && mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Failed to record payment')));
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loanProvider);
    final fmt = NumberFormat('#,##0.00');
    final active = state.loans.where((l) => l.status != 'Settled').toList();
    final settled = state.loans.where((l) => l.status == 'Settled').toList();

    final lent = active.where((l) => l.direction == 'Lent').toList();
    final borrowed = active.where((l) => l.direction == 'Borrowed').toList();
    final totalOweMe =
        lent.fold(0.0, (s, l) => s + l.remainingAmount);
    final totalIOwe =
        borrowed.fold(0.0, (s, l) => s + l.remainingAmount);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Loans'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Active'),
            Tab(text: 'Settled'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.push('/loans/add');
          _load();
        },
        child: const Icon(Icons.add),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: () async => _load(),
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Active tab
                  ListView(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
                    children: [
                      // Summary strip
                      Row(
                        children: [
                          Expanded(
                            child: _SummaryCard(
                              label: 'Others owe you',
                              value: '₹${NumberFormat("#,##0").format(totalOweMe)}',
                              color: AppTheme.income,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _SummaryCard(
                              label: 'You owe others',
                              value: '₹${NumberFormat("#,##0").format(totalIOwe)}',
                              color: AppTheme.expense,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      if (lent.isNotEmpty) ...[
                        const Text('Lent (I gave)',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.income)),
                        const SizedBox(height: 8),
                        ...lent.map((l) => _LoanCard(
                              loan: l,
                              fmt: fmt,
                              onEdit: () async {
                                await context.push('/loans/edit/${l.id}');
                                _load();
                              },
                              onDelete: () => _delete(l),
                              onPay: () => _showPaySheet(l),
                            )),
                        const SizedBox(height: 16),
                      ],
                      if (borrowed.isNotEmpty) ...[
                        const Text('Borrowed (I received)',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.expense)),
                        const SizedBox(height: 8),
                        ...borrowed.map((l) => _LoanCard(
                              loan: l,
                              fmt: fmt,
                              onEdit: () async {
                                await context.push('/loans/edit/${l.id}');
                                _load();
                              },
                              onDelete: () => _delete(l),
                              onPay: () => _showPaySheet(l),
                            )),
                      ],
                      if (active.isEmpty)
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: Text('No active loans',
                                style: TextStyle(
                                    color: AppTheme.textSecondary)),
                          ),
                        ),
                    ],
                  ),
                  // Settled tab
                  settled.isEmpty
                      ? const Center(
                          child: Text('No settled loans',
                              style:
                                  TextStyle(color: AppTheme.textSecondary)))
                      : ListView.builder(
                          padding:
                              const EdgeInsets.fromLTRB(16, 16, 16, 100),
                          itemCount: settled.length,
                          itemBuilder: (_, i) => _LoanCard(
                            loan: settled[i],
                            fmt: fmt,
                            onEdit: () async {
                              await context
                                  .push('/loans/edit/${settled[i].id}');
                              _load();
                            },
                            onDelete: () => _delete(settled[i]),
                            onPay: null,
                          ),
                        ),
                ],
              ),
            ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _SummaryCard(
      {required this.label, required this.value, required this.color});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withValues(alpha: 0.3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label,
                style: const TextStyle(
                    color: AppTheme.textSecondary, fontSize: 11)),
            const SizedBox(height: 4),
            Text(value,
                style: TextStyle(
                    color: color,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      );
}

class _LoanCard extends StatelessWidget {
  final Loan loan;
  final NumberFormat fmt;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final VoidCallback? onPay;

  const _LoanCard({
    required this.loan,
    required this.fmt,
    required this.onEdit,
    required this.onDelete,
    required this.onPay,
  });

  Color get _directionColor =>
      loan.direction == 'Lent' ? AppTheme.income : AppTheme.expense;

  @override
  Widget build(BuildContext context) {
    final progress =
        loan.amount > 0 ? loan.paidAmount / loan.amount : 0.0;

    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: _directionColor.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    loan.direction == 'Lent'
                        ? Icons.arrow_upward
                        : Icons.arrow_downward,
                    color: _directionColor,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(loan.contactName,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      Text(
                          DateFormat('dd MMM yyyy').format(loan.date),
                          style: const TextStyle(
                              color: AppTheme.textSecondary,
                              fontSize: 12)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: (loan.status == 'Settled'
                            ? AppTheme.income
                            : loan.status == 'PartiallyPaid'
                                ? AppTheme.emi
                                : AppTheme.primary)
                        .withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(loan.status,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: loan.status == 'Settled'
                              ? AppTheme.income
                              : loan.status == 'PartiallyPaid'
                                  ? AppTheme.emi
                                  : AppTheme.primary)),
                ),
                PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert,
                      color: AppTheme.textSecondary, size: 18),
                  onSelected: (v) {
                    if (v == 'edit') onEdit();
                    if (v == 'delete') onDelete();
                  },
                  itemBuilder: (_) => [
                    const PopupMenuItem(
                        value: 'edit', child: Text('Edit')),
                    const PopupMenuItem(
                        value: 'delete',
                        child: Text('Delete',
                            style: TextStyle(color: AppTheme.expense))),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            LinearProgressIndicator(
              value: progress.clamp(0.0, 1.0),
              backgroundColor:
                  _directionColor.withValues(alpha: 0.2),
              valueColor: AlwaysStoppedAnimation<Color>(_directionColor),
              minHeight: 5,
              borderRadius: BorderRadius.circular(3),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: _InfoChip(
                      label: 'Total',
                      value: '₹${fmt.format(loan.amount)}'),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: _InfoChip(
                      label: 'Paid',
                      value: '₹${fmt.format(loan.paidAmount)}'),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: _InfoChip(
                      label: 'Remaining',
                      value: '₹${fmt.format(loan.remainingAmount)}'),
                ),
              ],
            ),
            if (onPay != null && loan.status != 'Settled') ...[
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton.icon(
                  onPressed: onPay,
                  icon: const Icon(Icons.payments_outlined, size: 16),
                  label: const Text('Record Payment',
                      style: TextStyle(fontSize: 12)),
                  style: TextButton.styleFrom(
                    foregroundColor: _directionColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    minimumSize: Size.zero,
                  ),
                ),
              ),
            ],
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
        padding:
            const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
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
                    fontWeight: FontWeight.w600, fontSize: 11)),
          ],
        ),
      );
}

class _PayLoanSheet extends StatefulWidget {
  final Loan loan;
  final Future<void> Function(double amount) onPay;

  const _PayLoanSheet({required this.loan, required this.onPay});

  @override
  State<_PayLoanSheet> createState() => _PayLoanSheetState();
}

class _PayLoanSheetState extends State<_PayLoanSheet> {
  final _amountCtrl = TextEditingController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _amountCtrl.text =
        widget.loan.remainingAmount.toStringAsFixed(2);
  }

  @override
  void dispose() {
    _amountCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final amount = double.tryParse(_amountCtrl.text.trim());
    if (amount == null || amount <= 0) return;
    setState(() => _isLoading = true);
    final nav = Navigator.of(context);
    await widget.onPay(amount);
    if (mounted) nav.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Record Payment — ${widget.loan.contactName}',
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(
                'Remaining: ₹${NumberFormat("#,##0.00").format(widget.loan.remainingAmount)}',
                style: const TextStyle(
                    color: AppTheme.textSecondary, fontSize: 13)),
            const SizedBox(height: 20),
            TextFormField(
              controller: _amountCtrl,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              autofocus: true,
              decoration: const InputDecoration(
                  labelText: 'Payment Amount (₹)',
                  prefixIcon: Icon(Icons.currency_rupee)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isLoading ? null : _submit,
              child: _isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                          strokeWidth: 2, color: Colors.white))
                  : const Text('Record Payment'),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
