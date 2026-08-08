import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/cc_bill.dart';
import '../../auth/providers/auth_provider.dart';
import '../../payment_sources/providers/payment_source_provider.dart';
import '../providers/cc_bill_provider.dart';

class CcBillsScreen extends ConsumerStatefulWidget {
  const CcBillsScreen({super.key});

  @override
  ConsumerState<CcBillsScreen> createState() => _CcBillsScreenState();
}

class _CcBillsScreenState extends ConsumerState<CcBillsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  void _load() {
    final user = ref.read(authProvider).user;
    if (user == null) return;
    ref.read(ccBillProvider.notifier).load(user.id);
    ref.read(paymentSourceProvider.notifier).load(user.id);
  }

  Future<void> _delete(CcBill bill) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Delete CC Bill'),
        content: Text(
            'Delete bill for ${_monthName(bill.billingMonth)} ${bill.billingYear}?'),
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
    final ok = await ref.read(ccBillProvider.notifier).delete(bill.id);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Failed to delete bill')));
    }
  }

  void _showGenerateSheet() {
    final sources = ref
        .read(paymentSourceProvider)
        .sources
        .where((s) => s.type == 'CreditCard' && s.isActive)
        .toList();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppTheme.card,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => _GenerateBillSheet(
        sources: sources,
        onGenerate: ({
          required String sourceId,
          required double amount,
          required int month,
          required int year,
          required String dueDate,
        }) async {
          final ok = await ref.read(ccBillProvider.notifier).generate(
                paymentSourceId: sourceId,
                totalAmount: amount,
                billingMonth: month,
                billingYear: year,
                dueDate: dueDate,
              );
          if (!ok && mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Failed to generate bill')));
          }
        },
      ),
    );
  }

  void _showEditSheet(CcBill bill) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppTheme.card,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => _EditBillSheet(
        bill: bill,
        onSave: ({
          required double amount,
          required String dueDate,
          required String status,
        }) async {
          final ok = await ref.read(ccBillProvider.notifier).update(
                bill.id,
                totalAmount: amount,
                dueDate: dueDate,
                status: status,
              );
          if (!ok && mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Failed to update bill')));
          }
        },
      ),
    );
  }

  String _monthName(int m) => DateFormat('MMMM').format(DateTime(2000, m));

  Color _statusColor(String status) {
    switch (status) {
      case 'Paid':
        return AppTheme.income;
      case 'Overdue':
        return AppTheme.expense;
      default:
        return AppTheme.emi;
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(ccBillProvider);
    final fmt = NumberFormat('#,##0.00');
    final now = DateTime.now();

    return Scaffold(
      appBar: AppBar(title: const Text('CC Bills')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showGenerateSheet,
        icon: const Icon(Icons.add),
        label: const Text('Generate'),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: () async => _load(),
              child: state.bills.isEmpty
                  ? const Center(
                      child: Text('No CC bills yet',
                          style: TextStyle(color: AppTheme.textSecondary)),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
                      itemCount: state.bills.length,
                      itemBuilder: (_, i) {
                        final bill = state.bills[i];
                        DateTime? dueDateTime;
                        try {
                          dueDateTime = DateTime.parse(bill.dueDate);
                        } catch (_) {}
                        final daysLeft =
                            dueDateTime?.difference(now).inDays;

                        return Card(
                          margin: const EdgeInsets.only(bottom: 12),
                          child: Padding(
                            padding: const EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            bill.paymentSourceName ??
                                                'Credit Card',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          Text(
                                            '${_monthName(bill.billingMonth)} ${bill.billingYear}',
                                            style: const TextStyle(
                                                color: AppTheme.textSecondary,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 4),
                                      decoration: BoxDecoration(
                                        color: _statusColor(bill.status)
                                            .withValues(alpha: 0.15),
                                        borderRadius:
                                            BorderRadius.circular(20),
                                      ),
                                      child: Text(bill.status,
                                          style: TextStyle(
                                              color:
                                                  _statusColor(bill.status),
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    PopupMenuButton<String>(
                                      icon: const Icon(Icons.more_vert,
                                          color: AppTheme.textSecondary,
                                          size: 18),
                                      onSelected: (v) {
                                        if (v == 'edit') _showEditSheet(bill);
                                        if (v == 'delete') _delete(bill);
                                      },
                                      itemBuilder: (_) => [
                                        const PopupMenuItem(
                                            value: 'edit',
                                            child: Text('Edit')),
                                        const PopupMenuItem(
                                            value: 'delete',
                                            child: Text('Delete',
                                                style: TextStyle(
                                                    color: AppTheme.expense))),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  children: [
                                    Expanded(
                                      child: _InfoChip(
                                        label: 'Amount',
                                        value: '₹${fmt.format(bill.totalAmount)}',
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: _InfoChip(
                                        label: 'Due Date',
                                        value: dueDateTime != null
                                            ? DateFormat('dd MMM')
                                                .format(dueDateTime)
                                            : bill.dueDate,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: _InfoChip(
                                        label: 'Days Left',
                                        value: daysLeft != null
                                            ? daysLeft < 0
                                                ? '${-daysLeft}d ago'
                                                : '${daysLeft}d'
                                            : '—',
                                        valueColor: daysLeft != null
                                            ? daysLeft < 0
                                                ? AppTheme.expense
                                                : daysLeft <= 3
                                                    ? AppTheme.emi
                                                    : AppTheme.income
                                            : null,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final String label;
  final String value;
  final Color? valueColor;

  const _InfoChip({required this.label, required this.value, this.valueColor});

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
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: valueColor ?? AppTheme.textPrimary)),
          ],
        ),
      );
}

class _GenerateBillSheet extends StatefulWidget {
  final List sources;
  final Future<void> Function({
    required String sourceId,
    required double amount,
    required int month,
    required int year,
    required String dueDate,
  }) onGenerate;

  const _GenerateBillSheet({required this.sources, required this.onGenerate});

  @override
  State<_GenerateBillSheet> createState() => _GenerateBillSheetState();
}

class _GenerateBillSheetState extends State<_GenerateBillSheet> {
  final _formKey = GlobalKey<FormState>();
  final _amountCtrl = TextEditingController();
  String? _selectedSourceId;
  int _month = DateTime.now().month;
  int _year = DateTime.now().year;
  DateTime _dueDate = DateTime.now().add(const Duration(days: 20));
  bool _isLoading = false;

  @override
  void dispose() {
    _amountCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickDueDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _dueDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
    );
    if (picked != null) setState(() => _dueDate = picked);
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    if (_selectedSourceId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Select a credit card')));
      return;
    }
    setState(() => _isLoading = true);
    final nav = Navigator.of(context);
    await widget.onGenerate(
      sourceId: _selectedSourceId!,
      amount: double.parse(_amountCtrl.text.trim()),
      month: _month,
      year: _year,
      dueDate: _dueDate.toIso8601String(),
    );
    if (mounted) nav.pop();
  }

  @override
  Widget build(BuildContext context) {
    final months = List.generate(
        12, (i) => DropdownMenuItem(value: i + 1, child: Text(DateFormat('MMMM').format(DateTime(2000, i + 1)))));
    final years = List.generate(
        5, (i) => DropdownMenuItem(value: DateTime.now().year - 2 + i, child: Text('${DateTime.now().year - 2 + i}')));

    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Generate CC Bill',
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              if (widget.sources.isEmpty)
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: AppTheme.emi.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Text(
                      'No active credit cards found. Add a CreditCard payment source first.',
                      style: TextStyle(color: AppTheme.emi, fontSize: 13)),
                )
              else ...[
                DropdownButtonFormField<String>(
                  key: ValueKey(_selectedSourceId),
                  initialValue: _selectedSourceId,
                  decoration:
                      const InputDecoration(labelText: 'Credit Card'),
                  dropdownColor: AppTheme.card,
                  hint: const Text('Select card'),
                  items: widget.sources
                      .map((s) => DropdownMenuItem(
                            value: s.id as String,
                            child: Text(s.name as String,
                                overflow: TextOverflow.ellipsis),
                          ))
                      .toList(),
                  onChanged: (v) =>
                      setState(() => _selectedSourceId = v),
                  validator: (v) => v == null ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _amountCtrl,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                      labelText: 'Total Amount (₹)'),
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) return 'Required';
                    if (double.tryParse(v.trim()) == null) return 'Invalid';
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                Row(children: [
                  Expanded(
                    child: DropdownButtonFormField<int>(
                      key: ValueKey(_month),
                      initialValue: _month,
                      decoration:
                          const InputDecoration(labelText: 'Month'),
                      dropdownColor: AppTheme.card,
                      items: months,
                      onChanged: (v) =>
                          setState(() => _month = v ?? _month),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: DropdownButtonFormField<int>(
                      key: ValueKey(_year),
                      initialValue: _year,
                      decoration:
                          const InputDecoration(labelText: 'Year'),
                      dropdownColor: AppTheme.card,
                      items: years,
                      onChanged: (v) =>
                          setState(() => _year = v ?? _year),
                    ),
                  ),
                ]),
                const SizedBox(height: 16),
                InkWell(
                  onTap: _pickDueDate,
                  borderRadius: BorderRadius.circular(12),
                  child: InputDecorator(
                    decoration:
                        const InputDecoration(labelText: 'Due Date'),
                    child: Text(
                        DateFormat('dd MMM yyyy').format(_dueDate),
                        style: const TextStyle(fontSize: 14)),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: _isLoading ? null : _submit,
                  child: _isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                              strokeWidth: 2, color: Colors.white))
                      : const Text('Generate Bill'),
                ),
              ],
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

class _EditBillSheet extends StatefulWidget {
  final CcBill bill;
  final Future<void> Function({
    required double amount,
    required String dueDate,
    required String status,
  }) onSave;

  const _EditBillSheet({required this.bill, required this.onSave});

  @override
  State<_EditBillSheet> createState() => _EditBillSheetState();
}

class _EditBillSheetState extends State<_EditBillSheet> {
  final _amountCtrl = TextEditingController();
  late DateTime _dueDate;
  late String _status;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _amountCtrl.text = widget.bill.totalAmount.toStringAsFixed(2);
    _status = widget.bill.status;
    try {
      _dueDate = DateTime.parse(widget.bill.dueDate);
    } catch (_) {
      _dueDate = DateTime.now().add(const Duration(days: 20));
    }
  }

  @override
  void dispose() {
    _amountCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickDueDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _dueDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
    );
    if (picked != null) setState(() => _dueDate = picked);
  }

  Future<void> _submit() async {
    final amt = double.tryParse(_amountCtrl.text.trim());
    if (amt == null) return;
    setState(() => _isLoading = true);
    final nav = Navigator.of(context);
    await widget.onSave(
      amount: amt,
      dueDate: _dueDate.toIso8601String(),
      status: _status,
    );
    if (mounted) nav.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Edit Bill',
                style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            TextFormField(
              controller: _amountCtrl,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration:
                  const InputDecoration(labelText: 'Total Amount (₹)'),
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: _pickDueDate,
              borderRadius: BorderRadius.circular(12),
              child: InputDecorator(
                decoration:
                    const InputDecoration(labelText: 'Due Date'),
                child: Text(DateFormat('dd MMM yyyy').format(_dueDate),
                    style: const TextStyle(fontSize: 14)),
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              key: ValueKey(_status),
              initialValue: _status,
              decoration: const InputDecoration(labelText: 'Status'),
              dropdownColor: AppTheme.card,
              items: ['Unpaid', 'Paid', 'Overdue']
                  .map((s) =>
                      DropdownMenuItem(value: s, child: Text(s)))
                  .toList(),
              onChanged: (v) => setState(() => _status = v ?? _status),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _isLoading ? null : _submit,
              child: _isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                          strokeWidth: 2, color: Colors.white))
                  : const Text('Save Changes'),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
