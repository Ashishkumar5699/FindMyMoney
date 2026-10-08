import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_theme.dart';
import '../../auth/providers/auth_provider.dart';
import '../../payment_sources/providers/payment_source_provider.dart';
import '../providers/card_offer_provider.dart';

const _spendCategories = [
  'fuel', 'groceries', 'dining', 'travel', 'entertainment',
  'online', 'utilities', 'health', 'education', 'all',
];

class AddOfferScreen extends ConsumerStatefulWidget {
  const AddOfferScreen({super.key});

  @override
  ConsumerState<AddOfferScreen> createState() => _AddOfferScreenState();
}

class _AddOfferScreenState extends ConsumerState<AddOfferScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleCtrl = TextEditingController();
  final _descCtrl = TextEditingController();
  final _merchantCtrl = TextEditingController();
  final _discountCtrl = TextEditingController();
  final _maxDiscountCtrl = TextEditingController();
  final _minTxnCtrl = TextEditingController();

  String? _selectedCard;
  String? _selectedCategory;
  DateTime? _validUntil;
  bool _saving = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final user = ref.read(authProvider).user;
      if (user != null) ref.read(paymentSourceProvider.notifier).load(user.id);
    });
  }

  @override
  void dispose() {
    _titleCtrl.dispose();
    _descCtrl.dispose();
    _merchantCtrl.dispose();
    _discountCtrl.dispose();
    _maxDiscountCtrl.dispose();
    _minTxnCtrl.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    if (_selectedCard == null) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Select a card')));
      return;
    }
    setState(() => _saving = true);
    final user = ref.read(authProvider).user!;
    await ref.read(cardOfferProvider.notifier).addOffer(user.id, {
      'paymentSourceId': _selectedCard,
      'title': _titleCtrl.text.trim(),
      'description': _descCtrl.text.trim().isEmpty ? null : _descCtrl.text.trim(),
      'merchant': _merchantCtrl.text.trim().isEmpty ? null : _merchantCtrl.text.trim(),
      'category': _selectedCategory,
      'discountPercent': double.tryParse(_discountCtrl.text),
      'maxDiscount': double.tryParse(_maxDiscountCtrl.text),
      'minTransaction': double.tryParse(_minTxnCtrl.text),
      'validUntil': _validUntil?.toIso8601String(),
      'source': 'manual',
    });
    if (mounted) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final sources = ref.watch(paymentSourceProvider).sources
        .where((s) => s.type == '2') // CreditCard = 2
        .toList();

    return Scaffold(
      backgroundColor: AppTheme.card,
      appBar: AppBar(
        backgroundColor: AppTheme.surface,
        title: const Text('Add Offer'),
        actions: [
          TextButton(
            onPressed: _saving ? null : _save,
            child: _saving
                ? const SizedBox(
                    width: 18, height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2))
                : const Text('Save', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _label('Card *'),
            DropdownButtonFormField<String>(
              value: _selectedCard,
              decoration: _inputDec('Select card'),
              items: sources.map((s) => DropdownMenuItem(
                    value: s.id,
                    child: Text(s.name),
                  )).toList(),
              onChanged: (v) => setState(() => _selectedCard = v),
            ),
            const SizedBox(height: 12),
            _label('Title *'),
            TextFormField(
              controller: _titleCtrl,
              decoration: _inputDec('e.g. 5% off on Swiggy'),
              validator: (v) => v == null || v.trim().isEmpty ? 'Required' : null,
            ),
            const SizedBox(height: 12),
            _label('Merchant (optional)'),
            TextFormField(
              controller: _merchantCtrl,
              decoration: _inputDec('e.g. Swiggy'),
            ),
            const SizedBox(height: 12),
            _label('Spend Category'),
            DropdownButtonFormField<String>(
              value: _selectedCategory,
              decoration: _inputDec('Select category'),
              items: _spendCategories.map((c) => DropdownMenuItem(
                    value: c,
                    child: Text(c[0].toUpperCase() + c.substring(1)),
                  )).toList(),
              onChanged: (v) => setState(() => _selectedCategory = v),
            ),
            const SizedBox(height: 12),
            Row(children: [
              Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                _label('Discount %'),
                TextFormField(
                  controller: _discountCtrl,
                  keyboardType: TextInputType.number,
                  decoration: _inputDec('e.g. 5'),
                ),
              ])),
              const SizedBox(width: 12),
              Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                _label('Max Discount ₹'),
                TextFormField(
                  controller: _maxDiscountCtrl,
                  keyboardType: TextInputType.number,
                  decoration: _inputDec('e.g. 200'),
                ),
              ])),
            ]),
            const SizedBox(height: 12),
            _label('Min Transaction ₹'),
            TextFormField(
              controller: _minTxnCtrl,
              keyboardType: TextInputType.number,
              decoration: _inputDec('e.g. 500'),
            ),
            const SizedBox(height: 12),
            _label('Valid Until'),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                _validUntil == null
                    ? 'Tap to set expiry date'
                    : '${_validUntil!.day}/${_validUntil!.month}/${_validUntil!.year}',
                style: TextStyle(color: _validUntil == null ? Colors.grey : null),
              ),
              trailing: const Icon(Icons.calendar_today, size: 18),
              onTap: () async {
                final picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now().add(const Duration(days: 30)),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 365)),
                );
                if (picked != null) setState(() => _validUntil = picked);
              },
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget _label(String text) => Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Text(text,
            style: const TextStyle(
                fontSize: 12,
                color: AppTheme.textSecondary,
                fontWeight: FontWeight.w500)),
      );

  InputDecoration _inputDec(String hint) => InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: AppTheme.surface,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none),
      );
}
