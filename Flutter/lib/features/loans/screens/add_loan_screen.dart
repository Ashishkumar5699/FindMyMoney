import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../providers/loan_provider.dart';

class AddLoanScreen extends ConsumerStatefulWidget {
  final String? loanId;

  const AddLoanScreen({super.key, this.loanId});

  @override
  ConsumerState<AddLoanScreen> createState() => _AddLoanScreenState();
}

class _AddLoanScreenState extends ConsumerState<AddLoanScreen> {
  final _formKey = GlobalKey<FormState>();
  final _contactNameCtrl = TextEditingController();
  final _amountCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();

  String _direction = 'Lent';
  String _status = 'Active';
  DateTime _date = DateTime.now();
  bool _isLoading = false;

  bool get _isEdit => widget.loanId != null;

  @override
  void initState() {
    super.initState();
    if (_isEdit) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _prefill());
    }
  }

  void _prefill() {
    final loan = ref
        .read(loanProvider)
        .loans
        .where((l) => l.id == widget.loanId)
        .firstOrNull;
    if (loan == null) return;
    _contactNameCtrl.text = loan.contactName;
    _amountCtrl.text = loan.amount.toStringAsFixed(2);
    _notesCtrl.text = loan.notes ?? '';
    setState(() {
      _direction = loan.direction;
      _status = loan.status;
      _date = loan.date;
    });
  }

  @override
  void dispose() {
    _contactNameCtrl.dispose();
    _amountCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
    );
    if (picked != null) setState(() => _date = picked);
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isLoading = true);

    bool ok;
    if (_isEdit) {
      ok = await ref.read(loanProvider.notifier).update(
            widget.loanId!,
            contactName: _contactNameCtrl.text.trim(),
            amount: double.parse(_amountCtrl.text.trim()),
            direction: _direction,
            date: _date,
            notes: _notesCtrl.text.trim().isNotEmpty
                ? _notesCtrl.text.trim()
                : null,
            status: _status,
          );
    } else {
      ok = await ref.read(loanProvider.notifier).create(
            contactName: _contactNameCtrl.text.trim(),
            amount: double.parse(_amountCtrl.text.trim()),
            direction: _direction,
            date: _date,
            notes: _notesCtrl.text.trim().isNotEmpty
                ? _notesCtrl.text.trim()
                : null,
          );
    }

    setState(() => _isLoading = false);
    if (ok && mounted) {
      context.pop();
    } else if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                _isEdit ? 'Failed to update loan' : 'Failed to add loan')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_isEdit ? 'Edit Loan' : 'Add Loan')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Direction toggle
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => _direction = 'Lent'),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        decoration: BoxDecoration(
                          color: _direction == 'Lent'
                              ? AppTheme.income.withValues(alpha: 0.2)
                              : AppTheme.card,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          border: Border.all(
                            color: _direction == 'Lent'
                                ? AppTheme.income
                                : const Color(0xFF3A3A5E),
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.arrow_upward,
                                color: _direction == 'Lent'
                                    ? AppTheme.income
                                    : AppTheme.textSecondary),
                            const SizedBox(height: 4),
                            Text('I Lent',
                                style: TextStyle(
                                    color: _direction == 'Lent'
                                        ? AppTheme.income
                                        : AppTheme.textSecondary,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => _direction = 'Borrowed'),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        decoration: BoxDecoration(
                          color: _direction == 'Borrowed'
                              ? AppTheme.expense.withValues(alpha: 0.2)
                              : AppTheme.card,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          border: Border.all(
                            color: _direction == 'Borrowed'
                                ? AppTheme.expense
                                : const Color(0xFF3A3A5E),
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.arrow_downward,
                                color: _direction == 'Borrowed'
                                    ? AppTheme.expense
                                    : AppTheme.textSecondary),
                            const SizedBox(height: 4),
                            Text('I Borrowed',
                                style: TextStyle(
                                    color: _direction == 'Borrowed'
                                        ? AppTheme.expense
                                        : AppTheme.textSecondary,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _contactNameCtrl,
                decoration: const InputDecoration(
                  labelText: 'Contact Name',
                  prefixIcon: Icon(Icons.person_outline),
                ),
                validator: (v) =>
                    v == null || v.trim().isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _amountCtrl,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  labelText: 'Amount (₹)',
                  prefixIcon: Icon(Icons.currency_rupee),
                ),
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return 'Required';
                  if (double.tryParse(v.trim()) == null) return 'Invalid';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: _pickDate,
                borderRadius: BorderRadius.circular(12),
                child: InputDecorator(
                  decoration: const InputDecoration(labelText: 'Date'),
                  child: Text(DateFormat('dd MMM yyyy').format(_date),
                      style: const TextStyle(fontSize: 14)),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _notesCtrl,
                decoration: const InputDecoration(
                    labelText: 'Notes (optional)',
                    prefixIcon: Icon(Icons.notes_outlined)),
                maxLines: 2,
              ),
              if (_isEdit) ...[
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  key: ValueKey(_status),
                  initialValue: _status,
                  decoration: const InputDecoration(labelText: 'Status'),
                  dropdownColor: AppTheme.card,
                  items: ['Active', 'PartiallyPaid', 'Settled']
                      .map((s) =>
                          DropdownMenuItem(value: s, child: Text(s)))
                      .toList(),
                  onChanged: (v) =>
                      setState(() => _status = v ?? 'Active'),
                ),
              ],
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _isLoading ? null : _submit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _direction == 'Lent'
                      ? AppTheme.income
                      : AppTheme.expense,
                ),
                child: _isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                            strokeWidth: 2, color: Colors.white))
                    : Text(_isEdit ? 'Update Loan' : 'Add Loan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
