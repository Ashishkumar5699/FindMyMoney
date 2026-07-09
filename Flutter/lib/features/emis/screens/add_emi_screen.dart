import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../providers/emi_provider.dart';

class AddEmiScreen extends ConsumerStatefulWidget {
  final String? emiId;

  const AddEmiScreen({super.key, this.emiId});

  @override
  ConsumerState<AddEmiScreen> createState() => _AddEmiScreenState();
}

class _AddEmiScreenState extends ConsumerState<AddEmiScreen> {
  final _formKey = GlobalKey<FormState>();
  final _loanNameCtrl = TextEditingController();
  final _bankNameCtrl = TextEditingController();
  final _totalAmountCtrl = TextEditingController();
  final _emiAmountCtrl = TextEditingController();
  final _totalEmisCtrl = TextEditingController();
  final _paidEmisCtrl = TextEditingController();
  final _interestRateCtrl = TextEditingController();
  final _descCtrl = TextEditingController();

  DateTime _startDate = DateTime.now();
  DateTime _nextDueDate = DateTime.now().add(const Duration(days: 30));
  String _status = 'Active';
  bool _isLoading = false;

  bool get _isEdit => widget.emiId != null;

  @override
  void initState() {
    super.initState();
    if (_isEdit) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _prefill());
    }
  }

  void _prefill() {
    final emi = ref
        .read(emiProvider)
        .emis
        .where((e) => e.id == widget.emiId)
        .firstOrNull;
    if (emi == null) return;
    _loanNameCtrl.text = emi.loanName;
    _bankNameCtrl.text = emi.bankName;
    _totalAmountCtrl.text = emi.totalAmount.toStringAsFixed(2);
    _emiAmountCtrl.text = emi.emiAmount.toStringAsFixed(2);
    _totalEmisCtrl.text = emi.totalEmis.toString();
    _paidEmisCtrl.text = emi.paidEmis.toString();
    _interestRateCtrl.text = emi.interestRate.toStringAsFixed(2);
    _descCtrl.text = emi.description ?? '';
    setState(() {
      _startDate = emi.startDate;
      _nextDueDate = emi.nextDueDate;
      _status = emi.status;
    });
  }

  @override
  void dispose() {
    for (final c in [
      _loanNameCtrl, _bankNameCtrl, _totalAmountCtrl, _emiAmountCtrl,
      _totalEmisCtrl, _paidEmisCtrl, _interestRateCtrl, _descCtrl,
    ]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _pickDate({required bool isStart}) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: isStart ? _startDate : _nextDueDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
    );
    if (picked == null) return;
    setState(() {
      if (isStart) {
        _startDate = picked;
      } else {
        _nextDueDate = picked;
      }
    });
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isLoading = true);

    bool ok;
    if (_isEdit) {
      ok = await ref.read(emiProvider.notifier).update(
            widget.emiId!,
            loanName: _loanNameCtrl.text.trim(),
            bankName: _bankNameCtrl.text.trim(),
            totalAmount: double.parse(_totalAmountCtrl.text.trim()),
            emiAmount: double.parse(_emiAmountCtrl.text.trim()),
            totalEmis: int.parse(_totalEmisCtrl.text.trim()),
            paidEmis: int.parse(_paidEmisCtrl.text.trim()),
            interestRate: double.parse(_interestRateCtrl.text.trim()),
            startDate: _startDate,
            nextDueDate: _nextDueDate,
            status: _status,
            description: _descCtrl.text.trim().isNotEmpty
                ? _descCtrl.text.trim()
                : null,
          );
    } else {
      ok = await ref.read(emiProvider.notifier).create(
            loanName: _loanNameCtrl.text.trim(),
            bankName: _bankNameCtrl.text.trim(),
            totalAmount: double.parse(_totalAmountCtrl.text.trim()),
            emiAmount: double.parse(_emiAmountCtrl.text.trim()),
            totalEmis: int.parse(_totalEmisCtrl.text.trim()),
            paidEmis: int.parse(_paidEmisCtrl.text.trim()),
            interestRate: double.parse(_interestRateCtrl.text.trim()),
            startDate: _startDate,
            nextDueDate: _nextDueDate,
            status: _status,
            description: _descCtrl.text.trim().isNotEmpty
                ? _descCtrl.text.trim()
                : null,
          );
    }

    setState(() => _isLoading = false);
    if (ok && mounted) {
      context.pop();
    } else if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(_isEdit ? 'Failed to update EMI' : 'Failed to add EMI')),
      );
    }
  }

  Widget _numField(TextEditingController ctrl, String label,
      {bool isInt = false, bool allowZero = false}) =>
      TextFormField(
        controller: ctrl,
        keyboardType: isInt
            ? TextInputType.number
            : const TextInputType.numberWithOptions(decimal: true),
        decoration: InputDecoration(labelText: label),
        validator: (v) {
          if (v == null || v.trim().isEmpty) return 'Required';
          final n = num.tryParse(v.trim());
          if (n == null) return 'Invalid number';
          if (!allowZero && n < 0) return 'Must be ≥ 0';
          return null;
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_isEdit ? 'Edit EMI' : 'Add EMI')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _loanNameCtrl,
                decoration: const InputDecoration(
                  labelText: 'Loan Name',
                  prefixIcon: Icon(Icons.description_outlined),
                ),
                validator: (v) =>
                    v == null || v.trim().isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _bankNameCtrl,
                decoration: const InputDecoration(
                  labelText: 'Bank / Lender',
                  prefixIcon: Icon(Icons.account_balance_outlined),
                ),
                validator: (v) =>
                    v == null || v.trim().isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              Row(children: [
                Expanded(child: _numField(_totalAmountCtrl, 'Total Amount (₹)')),
                const SizedBox(width: 12),
                Expanded(child: _numField(_emiAmountCtrl, 'EMI Amount (₹)')),
              ]),
              const SizedBox(height: 16),
              Row(children: [
                Expanded(
                    child: _numField(_totalEmisCtrl, 'Total EMIs', isInt: true)),
                const SizedBox(width: 12),
                Expanded(
                    child: _numField(_paidEmisCtrl, 'Paid EMIs',
                        isInt: true, allowZero: true)),
              ]),
              const SizedBox(height: 16),
              _numField(_interestRateCtrl, 'Interest Rate (%)', allowZero: true),
              const SizedBox(height: 16),
              Row(children: [
                Expanded(
                  child: InkWell(
                    onTap: () => _pickDate(isStart: true),
                    borderRadius: BorderRadius.circular(12),
                    child: InputDecorator(
                      decoration: const InputDecoration(labelText: 'Start Date'),
                      child: Text(DateFormat('dd MMM yyyy').format(_startDate),
                          style: const TextStyle(fontSize: 14)),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: InkWell(
                    onTap: () => _pickDate(isStart: false),
                    borderRadius: BorderRadius.circular(12),
                    child: InputDecorator(
                      decoration: const InputDecoration(labelText: 'Next Due Date'),
                      child: Text(DateFormat('dd MMM yyyy').format(_nextDueDate),
                          style: const TextStyle(fontSize: 14)),
                    ),
                  ),
                ),
              ]),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                key: ValueKey(_status),
                initialValue: _status,
                decoration: const InputDecoration(labelText: 'Status'),
                dropdownColor: AppTheme.card,
                items: ['Active', 'Completed', 'Paused']
                    .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                    .toList(),
                onChanged: (v) => setState(() => _status = v ?? 'Active'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _descCtrl,
                decoration: const InputDecoration(
                    labelText: 'Notes (optional)',
                    prefixIcon: Icon(Icons.notes_outlined)),
                maxLines: 2,
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _isLoading ? null : _submit,
                style: ElevatedButton.styleFrom(backgroundColor: AppTheme.emi),
                child: _isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                            strokeWidth: 2, color: Colors.white))
                    : Text(_isEdit ? 'Update EMI' : 'Add EMI'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
