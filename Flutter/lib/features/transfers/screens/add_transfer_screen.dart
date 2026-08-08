import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/payment_source.dart';
import '../../auth/providers/auth_provider.dart';
import '../../payment_sources/providers/payment_source_provider.dart';
import '../providers/transfer_provider.dart';

class AddTransferScreen extends ConsumerStatefulWidget {
  final String? transferId;

  const AddTransferScreen({super.key, this.transferId});

  @override
  ConsumerState<AddTransferScreen> createState() => _AddTransferScreenState();
}

class _AddTransferScreenState extends ConsumerState<AddTransferScreen> {
  final _formKey = GlobalKey<FormState>();
  final _amountCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();

  String? _fromSourceId;
  String? _toSourceId;
  DateTime _date = DateTime.now();
  bool _isLoading = false;

  bool get _isEdit => widget.transferId != null;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _init());
  }

  void _init() {
    final user = ref.read(authProvider).user;
    if (user == null) return;
    // Load payment sources if not loaded
    final sourcesState = ref.read(paymentSourceProvider);
    if (sourcesState.sources.isEmpty) {
      ref.read(paymentSourceProvider.notifier).load(user.id);
    }
    if (_isEdit) _prefill();
  }

  void _prefill() {
    final transfer = ref
        .read(transferProvider)
        .transfers
        .where((t) => t.id == widget.transferId)
        .firstOrNull;
    if (transfer == null) return;
    _amountCtrl.text = transfer.amount.toStringAsFixed(2);
    _notesCtrl.text = transfer.notes ?? '';
    setState(() {
      _fromSourceId = transfer.fromSourceId;
      _toSourceId = transfer.toSourceId;
      _date = transfer.date;
    });
  }

  @override
  void dispose() {
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
    if (_fromSourceId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select a source account')));
      return;
    }
    setState(() => _isLoading = true);

    bool ok;
    if (_isEdit) {
      ok = await ref.read(transferProvider.notifier).update(
            widget.transferId!,
            fromSourceId: _fromSourceId!,
            toSourceId: _toSourceId,
            amount: double.parse(_amountCtrl.text.trim()),
            date: _date,
            notes: _notesCtrl.text.trim().isNotEmpty
                ? _notesCtrl.text.trim()
                : null,
          );
    } else {
      ok = await ref.read(transferProvider.notifier).create(
            fromSourceId: _fromSourceId!,
            toSourceId: _toSourceId,
            amount: double.parse(_amountCtrl.text.trim()),
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
                ? 'Failed to update transfer'
                : 'Failed to add transfer')),
      );
    }
  }

  Widget _sourceDropdown({
    required String label,
    required String? value,
    required List<PaymentSource> sources,
    required void Function(String?) onChanged,
    bool required = false,
  }) =>
      DropdownButtonFormField<String>(
        key: ValueKey(value),
        initialValue: value,
        decoration: InputDecoration(labelText: label),
        dropdownColor: AppTheme.card,
        hint: const Text('Select account'),
        items: sources
            .map((s) => DropdownMenuItem(
                  value: s.id,
                  child: Text(s.name,
                      overflow: TextOverflow.ellipsis),
                ))
            .toList(),
        onChanged: onChanged,
        validator: required
            ? (v) => v == null ? 'Required' : null
            : null,
      );

  @override
  Widget build(BuildContext context) {
    final sources = ref.watch(paymentSourceProvider).sources;

    return Scaffold(
      appBar: AppBar(title: Text(_isEdit ? 'Edit Transfer' : 'Add Transfer')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _sourceDropdown(
                label: 'From Account',
                value: _fromSourceId,
                sources: sources,
                onChanged: (v) => setState(() => _fromSourceId = v),
                required: true,
              ),
              const SizedBox(height: 16),
              _sourceDropdown(
                label: 'To Account (optional)',
                value: _toSourceId,
                sources: sources,
                onChanged: (v) => setState(() => _toSourceId = v),
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
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _isLoading ? null : _submit,
                child: _isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                            strokeWidth: 2, color: Colors.white))
                    : Text(_isEdit ? 'Update Transfer' : 'Add Transfer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
