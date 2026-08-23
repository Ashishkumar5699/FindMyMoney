import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../domain/models/expense_categories.dart';
import '../../../domain/models/sms_transaction.dart';
import '../../auth/providers/auth_provider.dart';
import '../../expenses/providers/expense_provider.dart';
import '../providers/sms_review_provider.dart';

class SmsReviewScreen extends ConsumerStatefulWidget {
  const SmsReviewScreen({super.key});

  @override
  ConsumerState<SmsReviewScreen> createState() => _SmsReviewScreenState();
}

class _SmsReviewScreenState extends ConsumerState<SmsReviewScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => ref.read(smsReviewProvider.notifier).load());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(smsReviewProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF0F0F14),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F0F14),
        title: const Text('AI-detected transactions',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          if (state.pending.isNotEmpty)
            TextButton(
              onPressed: () => _dismissAll(state.pending),
              child: const Text('Dismiss all',
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
            ),
        ],
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : state.pending.isEmpty
              ? _EmptyState()
              : ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  itemCount: state.pending.length,
                  itemBuilder: (ctx, i) =>
                      _SmsCard(txn: state.pending[i]),
                ),
    );
  }

  Future<void> _dismissAll(List<SmsTransaction> pending) async {
    for (final t in pending) {
      await ref.read(smsReviewProvider.notifier).dismiss(t.id);
    }
  }
}

class _EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.sms_outlined, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          const Text('No pending transactions',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text(
            'AI will detect bank SMS transactions\nand show them here for review.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class _SmsCard extends ConsumerStatefulWidget {
  final SmsTransaction txn;
  const _SmsCard({required this.txn});

  @override
  ConsumerState<_SmsCard> createState() => _SmsCardState();
}

class _SmsCardState extends ConsumerState<_SmsCard> {
  late String _category;
  late String _description;
  bool _saving = false;
  bool _expanded = false;

  @override
  void initState() {
    super.initState();
    _category = widget.txn.suggestedCategory ?? 'Other';
    _description = widget.txn.merchant ?? '';
  }

  Future<void> _save() async {
    setState(() => _saving = true);
    final user = ref.read(authProvider).user;
    if (user == null) return;

    final ok = await ref.read(expenseProvider.notifier).create(
          amount: widget.txn.amount,
          category: _category,
          description: _description,
          date: DateTime.now(),
          source: 'sms_ai',
        );

    if (ok) {
      await ref.read(smsReviewProvider.notifier).dismiss(widget.txn.id);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('₹${widget.txn.amount.toStringAsFixed(0)} added'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } else {
      setState(() => _saving = false);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to save. Try again.')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isExpense = widget.txn.type == 'expense';
    final amountColor = isExpense ? const Color(0xFFFF6B6B) : Colors.green;
    final typeIcon = isExpense ? Icons.arrow_upward : Icons.arrow_downward;
    final conf = (widget.txn.confidence * 100).round();

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C2E),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF2D2D45), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Card header
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    color: amountColor.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(typeIcon, color: amountColor, size: 22),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.txn.merchant ?? widget.txn.sender,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        widget.txn.sender,
                        style: const TextStyle(
                            color: Colors.grey, fontSize: 12),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '₹${NumberFormat('#,##0.00').format(widget.txn.amount)}',
                      style: TextStyle(
                        color: amountColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.purple.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'AI $conf%',
                        style: const TextStyle(
                            color: Colors.purple, fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Category chip row
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Row(
              children: [
                const Icon(Icons.category_outlined,
                    size: 14, color: Colors.grey),
                const SizedBox(width: 6),
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: ExpenseCategories.allCategories
                              .contains(_category)
                          ? _category
                          : ExpenseCategories.allCategories.first,
                      dropdownColor: const Color(0xFF1C1C2E),
                      isDense: true,
                      style: const TextStyle(
                          color: Colors.white70, fontSize: 13),
                      items: ExpenseCategories.allCategories
                          .map((c) => DropdownMenuItem(
                                value: c,
                                child: Text(c),
                              ))
                          .toList(),
                      onChanged: (v) => setState(() => _category = v ?? _category),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Raw SMS toggle
          GestureDetector(
            onTap: () => setState(() => _expanded = !_expanded),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: Row(
                children: [
                  const Icon(Icons.sms_outlined, size: 13, color: Colors.grey),
                  const SizedBox(width: 4),
                  const Text('View SMS',
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                  Icon(
                    _expanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    size: 14,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),

          if (_expanded)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF0F0F14),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  widget.txn.rawSms,
                  style: const TextStyle(
                      color: Colors.white54, fontSize: 11, height: 1.5),
                ),
              ),
            ),

          // Action buttons
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
            child: Row(
              children: [
                // Dismiss
                Expanded(
                  child: OutlinedButton(
                    onPressed: _saving
                        ? null
                        : () => ref
                            .read(smsReviewProvider.notifier)
                            .dismiss(widget.txn.id),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.grey,
                      side: const BorderSide(color: Color(0xFF3D3D5C)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text('Dismiss'),
                  ),
                ),
                const SizedBox(width: 10),
                // Add
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: _saving ? null : _save,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    child: _saving
                        ? const SizedBox(
                            height: 18,
                            width: 18,
                            child: CircularProgressIndicator(
                                strokeWidth: 2, color: Colors.white))
                        : Text(
                            'Add as ${isExpense ? 'expense' : 'income'}',
                            style: const TextStyle(fontSize: 13)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
