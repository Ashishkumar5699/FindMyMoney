import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../providers/investment_provider.dart';

class AddInvestmentScreen extends ConsumerStatefulWidget {
  final String? investmentId;

  const AddInvestmentScreen({super.key, this.investmentId});

  @override
  ConsumerState<AddInvestmentScreen> createState() =>
      _AddInvestmentScreenState();
}

class _AddInvestmentScreenState extends ConsumerState<AddInvestmentScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _amountCtrl = TextEditingController();
  final _currentValueCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();

  String _type = 'Stocks';
  DateTime _date = DateTime.now();
  bool _isLoading = false;

  static const _types = [
    'Stocks',
    'Mutual Funds',
    'Fixed Deposit',
    'Gold',
    'Real Estate',
    'Crypto',
    'Other',
  ];

  bool get _isEdit => widget.investmentId != null;

  @override
  void initState() {
    super.initState();
    if (_isEdit) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _prefill());
    }
  }

  void _prefill() {
    final inv = ref
        .read(investmentProvider)
        .investments
        .where((i) => i.id == widget.investmentId)
        .firstOrNull;
    if (inv == null) return;
    _nameCtrl.text = inv.name;
    _amountCtrl.text = inv.amount.toStringAsFixed(2);
    _currentValueCtrl.text = inv.currentValue.toStringAsFixed(2);
    _notesCtrl.text = inv.notes ?? '';
    setState(() {
      _type = inv.type;
      _date = inv.date;
    });
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _amountCtrl.dispose();
    _currentValueCtrl.dispose();
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
      ok = await ref.read(investmentProvider.notifier).update(
            widget.investmentId!,
            name: _nameCtrl.text.trim(),
            type: _type,
            amount: double.parse(_amountCtrl.text.trim()),
            currentValue: double.parse(_currentValueCtrl.text.trim()),
            date: _date,
            notes: _notesCtrl.text.trim().isNotEmpty
                ? _notesCtrl.text.trim()
                : null,
          );
    } else {
      ok = await ref.read(investmentProvider.notifier).create(
            name: _nameCtrl.text.trim(),
            type: _type,
            amount: double.parse(_amountCtrl.text.trim()),
            currentValue: double.parse(_currentValueCtrl.text.trim()),
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
            content: Text(_isEdit
                ? 'Failed to update investment'
                : 'Failed to add investment')),
      );
    }
  }

  Widget _numField(TextEditingController ctrl, String label) =>
      TextFormField(
        controller: ctrl,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        decoration: InputDecoration(labelText: label),
        validator: (v) {
          if (v == null || v.trim().isEmpty) return 'Required';
          if (double.tryParse(v.trim()) == null) return 'Invalid number';
          return null;
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text(_isEdit ? 'Edit Investment' : 'Add Investment')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _nameCtrl,
                decoration: const InputDecoration(
                  labelText: 'Investment Name',
                  prefixIcon: Icon(Icons.business_outlined),
                ),
                validator: (v) =>
                    v == null || v.trim().isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                key: ValueKey(_type),
                initialValue: _type,
                decoration: const InputDecoration(labelText: 'Type'),
                dropdownColor: AppTheme.card,
                items: _types
                    .map((t) => DropdownMenuItem(value: t, child: Text(t)))
                    .toList(),
                onChanged: (v) => setState(() => _type = v ?? 'Stocks'),
              ),
              const SizedBox(height: 16),
              Row(children: [
                Expanded(child: _numField(_amountCtrl, 'Invested Amount (₹)')),
                const SizedBox(width: 12),
                Expanded(
                    child: _numField(_currentValueCtrl, 'Current Value (₹)')),
              ]),
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
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _isLoading ? null : _submit,
                child: _isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                            strokeWidth: 2, color: Colors.white))
                    : Text(_isEdit ? 'Update Investment' : 'Add Investment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
