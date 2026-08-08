import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';
import '../providers/payment_source_provider.dart';

class AddPaymentSourceScreen extends ConsumerStatefulWidget {
  final String? sourceId;

  const AddPaymentSourceScreen({super.key, this.sourceId});

  @override
  ConsumerState<AddPaymentSourceScreen> createState() =>
      _AddPaymentSourceScreenState();
}

class _AddPaymentSourceScreenState
    extends ConsumerState<AddPaymentSourceScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _accountLast4Ctrl = TextEditingController();
  final _bankNameCtrl = TextEditingController();
  final _creditLimitCtrl = TextEditingController();
  final _billingCycleDayCtrl = TextEditingController();
  final _dueDaysCtrl = TextEditingController();
  final _balanceCtrl = TextEditingController();

  String _type = 'Bank';
  bool _isLoading = false;

  static const _types = ['Bank', 'CreditCard', 'Cash', 'UPI', 'Wallet'];

  bool get _isEdit => widget.sourceId != null;
  bool get _isCreditCard => _type == 'CreditCard';

  @override
  void initState() {
    super.initState();
    if (_isEdit) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _prefill());
    }
  }

  void _prefill() {
    final source = ref
        .read(paymentSourceProvider)
        .sources
        .where((s) => s.id == widget.sourceId)
        .firstOrNull;
    if (source == null) return;
    _nameCtrl.text = source.name;
    _accountLast4Ctrl.text = source.accountLast4 ?? '';
    _bankNameCtrl.text = source.bankName ?? '';
    _creditLimitCtrl.text = source.creditLimit?.toStringAsFixed(2) ?? '';
    _billingCycleDayCtrl.text = source.billingCycleDay?.toString() ?? '';
    _dueDaysCtrl.text = source.dueDaysAfterBilling?.toString() ?? '';
    _balanceCtrl.text = source.balance.toStringAsFixed(2);
    setState(() => _type = source.type);
  }

  @override
  void dispose() {
    for (final c in [
      _nameCtrl,
      _accountLast4Ctrl,
      _bankNameCtrl,
      _creditLimitCtrl,
      _billingCycleDayCtrl,
      _dueDaysCtrl,
      _balanceCtrl,
    ]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isLoading = true);

    final accountLast4 = _accountLast4Ctrl.text.trim().isNotEmpty
        ? _accountLast4Ctrl.text.trim()
        : null;
    final bankName =
        _bankNameCtrl.text.trim().isNotEmpty ? _bankNameCtrl.text.trim() : null;
    final creditLimit = _creditLimitCtrl.text.trim().isNotEmpty
        ? double.tryParse(_creditLimitCtrl.text.trim())
        : null;
    final billingCycleDay = _billingCycleDayCtrl.text.trim().isNotEmpty
        ? int.tryParse(_billingCycleDayCtrl.text.trim())
        : null;
    final dueDays = _dueDaysCtrl.text.trim().isNotEmpty
        ? int.tryParse(_dueDaysCtrl.text.trim())
        : null;
    final balance = double.parse(_balanceCtrl.text.trim());

    bool ok;
    if (_isEdit) {
      ok = await ref.read(paymentSourceProvider.notifier).update(
            widget.sourceId!,
            name: _nameCtrl.text.trim(),
            type: _type,
            accountLast4: accountLast4,
            bankName: bankName,
            creditLimit: creditLimit,
            billingCycleDay: billingCycleDay,
            dueDaysAfterBilling: dueDays,
            balance: balance,
          );
    } else {
      ok = await ref.read(paymentSourceProvider.notifier).create(
            name: _nameCtrl.text.trim(),
            type: _type,
            accountLast4: accountLast4,
            bankName: bankName,
            creditLimit: creditLimit,
            billingCycleDay: billingCycleDay,
            dueDaysAfterBilling: dueDays,
            balance: balance,
          );
    }

    setState(() => _isLoading = false);
    if (ok && mounted) {
      context.pop();
    } else if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(_isEdit
                ? 'Failed to update payment source'
                : 'Failed to add payment source')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(_isEdit ? 'Edit Payment Source' : 'Add Payment Source')),
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
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.label_outlined),
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
                onChanged: (v) => setState(() => _type = v ?? 'Bank'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _balanceCtrl,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  labelText: 'Balance (₹)',
                  prefixIcon: Icon(Icons.account_balance_wallet_outlined),
                ),
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return 'Required';
                  if (double.tryParse(v.trim()) == null) return 'Invalid';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _bankNameCtrl,
                decoration: const InputDecoration(
                  labelText: 'Bank Name (optional)',
                  prefixIcon: Icon(Icons.account_balance_outlined),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _accountLast4Ctrl,
                keyboardType: TextInputType.number,
                maxLength: 4,
                decoration: const InputDecoration(
                  labelText: 'Last 4 digits (optional)',
                  prefixIcon: Icon(Icons.pin_outlined),
                  counterText: '',
                ),
              ),
              if (_isCreditCard) ...[
                const SizedBox(height: 16),
                TextFormField(
                  controller: _creditLimitCtrl,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                    labelText: 'Credit Limit (₹)',
                    prefixIcon: Icon(Icons.credit_score_outlined),
                  ),
                ),
                const SizedBox(height: 16),
                Row(children: [
                  Expanded(
                    child: TextFormField(
                      controller: _billingCycleDayCtrl,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          labelText: 'Billing Cycle Day'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextFormField(
                      controller: _dueDaysCtrl,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          labelText: 'Due Days After Billing'),
                    ),
                  ),
                ]),
              ],
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _isLoading ? null : _submit,
                child: _isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                            strokeWidth: 2, color: Colors.white))
                    : Text(_isEdit ? 'Update' : 'Add Payment Source'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
