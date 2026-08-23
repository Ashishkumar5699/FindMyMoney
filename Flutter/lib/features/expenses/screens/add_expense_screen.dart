import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/expense_categories.dart';
import '../providers/expense_provider.dart';

class AddExpenseScreen extends ConsumerStatefulWidget {
  final String? expenseId;

  const AddExpenseScreen({super.key, this.expenseId});

  @override
  ConsumerState<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends ConsumerState<AddExpenseScreen> {
  final _formKey = GlobalKey<FormState>();
  final _amountCtrl = TextEditingController();
  final _descCtrl = TextEditingController();

  String? _category;
  String? _subCategory;
  DateTime _date = DateTime.now();
  bool _isLoading = false;
  bool get _isEdit => widget.expenseId != null;

  @override
  void initState() {
    super.initState();
    if (_isEdit) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _prefillEdit());
    }
  }

  void _prefillEdit() {
    final expense = ref
        .read(expenseProvider)
        .expenses
        .where((e) => e.id == widget.expenseId)
        .firstOrNull;
    if (expense == null) return;
    _amountCtrl.text = expense.amount.toStringAsFixed(2);
    _descCtrl.text = expense.description;
    setState(() {
      _category = expense.category;
      _subCategory =
          expense.subCategory.isNotEmpty ? expense.subCategory : null;
      _date = expense.date;
    });
  }

  @override
  void dispose() {
    _amountCtrl.dispose();
    _descCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );
    if (picked != null) setState(() => _date = picked);
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    if (_category == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a category')),
      );
      return;
    }

    setState(() => _isLoading = true);
    final amount = double.parse(_amountCtrl.text.trim());

    bool ok;
    if (_isEdit) {
      ok = await ref.read(expenseProvider.notifier).update(
            widget.expenseId!,
            amount: amount,
            category: _category!,
            subCategory: _subCategory ?? '',
            description: _descCtrl.text.trim(),
            date: _date,
          );
    } else {
      ok = await ref.read(expenseProvider.notifier).create(
            amount: amount,
            category: _category!,
            subCategory: _subCategory ?? '',
            description: _descCtrl.text.trim(),
            date: _date,
          );
    }

    setState(() => _isLoading = false);

    if (ok && mounted) {
      context.pop();
    } else if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(_isEdit
                ? 'Failed to update expense'
                : 'Failed to add expense')),
      );
    }
  }

  List<String> get _subCategories =>
      _category != null ? ExpenseCategories.getSubCategories(_category!) : [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isEdit ? 'Edit Expense' : 'Add Expense'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Amount
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
                  if (double.tryParse(v.trim()) == null) return 'Invalid amount';
                  if (double.parse(v.trim()) <= 0) return 'Must be > 0';
                  return null;
                },
              ),

              const SizedBox(height: 16),

              // Category dropdown — key forces rebuild when value changes (initialValue is init-only)
              DropdownButtonFormField<String>(
                key: ValueKey(_category),
                initialValue: _category,
                decoration: const InputDecoration(
                  labelText: 'Category',
                  prefixIcon: Icon(Icons.category_outlined),
                ),
                dropdownColor: AppTheme.card,
                items: ExpenseCategories.allCategories
                    .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                    .toList(),
                onChanged: (v) {
                  setState(() {
                    _category = v;
                    _subCategory = null;
                  });
                },
                validator: (v) => v == null ? 'Required' : null,
              ),

              const SizedBox(height: 16),

              // Sub-category
              if (_subCategories.isNotEmpty) ...[
                DropdownButtonFormField<String>(
                  key: ValueKey(_subCategory),
                  initialValue: _subCategory,
                  decoration: const InputDecoration(
                    labelText: 'Sub-category (optional)',
                    prefixIcon: Icon(Icons.subdirectory_arrow_right),
                  ),
                  dropdownColor: AppTheme.card,
                  items: _subCategories
                      .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                      .toList(),
                  onChanged: (v) => setState(() => _subCategory = v),
                ),
                const SizedBox(height: 16),
              ],

              // Description
              TextFormField(
                controller: _descCtrl,
                decoration: const InputDecoration(
                  labelText: 'Description (optional)',
                  prefixIcon: Icon(Icons.notes_outlined),
                ),
                maxLines: 2,
              ),

              const SizedBox(height: 16),

              // Date picker
              InkWell(
                onTap: _pickDate,
                borderRadius: BorderRadius.circular(12),
                child: InputDecorator(
                  decoration: const InputDecoration(
                    labelText: 'Date',
                    prefixIcon: Icon(Icons.calendar_today_outlined),
                  ),
                  child: Text(DateFormat('dd MMM yyyy').format(_date)),
                ),
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
                    : Text(_isEdit ? 'Update Expense' : 'Add Expense'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
