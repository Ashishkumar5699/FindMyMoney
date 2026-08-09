import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/khata_contact.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/khata_provider.dart';
import '../../../core/di/providers.dart';

class KhataScreen extends ConsumerStatefulWidget {
  const KhataScreen({super.key});

  @override
  ConsumerState<KhataScreen> createState() => _KhataScreenState();
}

class _KhataScreenState extends ConsumerState<KhataScreen> {
  final _fmt = NumberFormat('#,##0.00', 'en_IN');

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  void _load() {
    final user = ref.read(authProvider).user;
    if (user == null) return;
    ref.read(khataProvider.notifier).load(user.id);
  }

  String get _userId => ref.read(authProvider).user?.id ?? '';

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(khataProvider);
    final othersOweMe = state.contacts.where((c) => c.balance > 0).fold(0.0, (s, c) => s + c.balance);
    final iOweOthers = state.contacts.where((c) => c.balance < 0).fold(0.0, (s, c) => s + c.balance.abs());

    return Scaffold(
      backgroundColor: AppTheme.card,
      appBar: AppBar(
        title: const Text('Khata'),
        backgroundColor: AppTheme.surface,
        foregroundColor: AppTheme.textPrimary,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.person_add_outlined),
            onPressed: () => _showAddContactSheet(context),
          ),
        ],
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                _SummaryStrip(othersOweMe: othersOweMe, iOweOthers: iOweOthers, fmt: _fmt),
                Expanded(
                  child: state.contacts.isEmpty
                      ? _EmptyState(onAdd: () => _showAddContactSheet(context))
                      : ListView.builder(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          itemCount: state.contacts.length,
                          itemBuilder: (ctx, i) => _ContactTile(
                            contact: state.contacts[i],
                            fmt: _fmt,
                            onTap: () => _showContactSheet(context, state.contacts[i]),
                          ),
                        ),
                ),
              ],
            ),
    );
  }

  void _showAddContactSheet(BuildContext context) {
    final nameCtrl = TextEditingController();
    final notesCtrl = TextEditingController();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppTheme.surface,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (ctx) => Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom, left: 20, right: 20, top: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Add Contact', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppTheme.textPrimary)),
            const SizedBox(height: 16),
            TextField(
              controller: nameCtrl,
              autofocus: true,
              decoration: const InputDecoration(labelText: 'Name', border: OutlineInputBorder()),
              style: TextStyle(color: AppTheme.textPrimary),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: notesCtrl,
              decoration: const InputDecoration(labelText: 'Notes (optional)', border: OutlineInputBorder()),
              style: TextStyle(color: AppTheme.textPrimary),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primary),
                onPressed: () async {
                  if (nameCtrl.text.trim().isEmpty) return;
                  Navigator.pop(ctx);
                  await ref.read(khataProvider.notifier).createContact(
                        name: nameCtrl.text.trim(),
                        notes: notesCtrl.text.trim().isEmpty ? null : notesCtrl.text.trim(),
                      );
                },
                child: const Text('Add'),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  void _showContactSheet(BuildContext context, KhataContact contact) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppTheme.surface,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (ctx) => _ContactDetailSheet(contact: contact, userId: _userId, fmt: _fmt),
    );
  }
}

class _SummaryStrip extends StatelessWidget {
  final double othersOweMe;
  final double iOweOthers;
  final NumberFormat fmt;

  const _SummaryStrip({required this.othersOweMe, required this.iOweOthers, required this.fmt});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.surface,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          Expanded(child: _SummaryCard(label: 'They owe you', amount: othersOweMe, color: Colors.green, fmt: fmt)),
          const SizedBox(width: 12),
          Expanded(child: _SummaryCard(label: 'You owe others', amount: iOweOthers, color: Colors.redAccent, fmt: fmt)),
        ],
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  final String label;
  final double amount;
  final Color color;
  final NumberFormat fmt;

  const _SummaryCard({required this.label, required this.amount, required this.color, required this.fmt});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 11, color: AppTheme.textSecondary)),
          const SizedBox(height: 4),
          Text('₹${fmt.format(amount)}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: color)),
        ],
      ),
    );
  }
}

class _ContactTile extends StatelessWidget {
  final KhataContact contact;
  final NumberFormat fmt;
  final VoidCallback onTap;

  const _ContactTile({required this.contact, required this.fmt, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final isPositive = contact.balance >= 0;
    final balanceColor = isPositive ? Colors.green : Colors.redAccent;
    final balanceLabel = isPositive ? 'owes you' : 'you owe';

    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        backgroundColor: balanceColor.withValues(alpha: 0.15),
        child: Text(
          contact.name.isNotEmpty ? contact.name[0].toUpperCase() : '?',
          style: TextStyle(color: balanceColor, fontWeight: FontWeight.bold),
        ),
      ),
      title: Text(contact.name, style: TextStyle(color: AppTheme.textPrimary, fontWeight: FontWeight.w600)),
      subtitle: contact.notes != null
          ? Text(contact.notes!, style: TextStyle(color: AppTheme.textSecondary, fontSize: 12))
          : null,
      trailing: contact.balance == 0
          ? Text('Settled', style: TextStyle(color: AppTheme.textSecondary, fontSize: 12))
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('₹${fmt.format(contact.balance.abs())}',
                    style: TextStyle(color: balanceColor, fontWeight: FontWeight.bold, fontSize: 15)),
                Text(balanceLabel, style: TextStyle(color: AppTheme.textSecondary, fontSize: 11)),
              ],
            ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  final VoidCallback onAdd;
  const _EmptyState({required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.menu_book_outlined, size: 64, color: AppTheme.textSecondary),
          const SizedBox(height: 16),
          Text('No contacts yet', style: TextStyle(color: AppTheme.textSecondary, fontSize: 16)),
          const SizedBox(height: 8),
          TextButton.icon(
            onPressed: onAdd,
            icon: const Icon(Icons.person_add_outlined),
            label: const Text('Add Contact'),
          ),
        ],
      ),
    );
  }
}

// ─── Contact Detail Sheet ────────────────────────────────────────────────────

class _ContactDetailSheet extends ConsumerStatefulWidget {
  final KhataContact contact;
  final String userId;
  final NumberFormat fmt;

  const _ContactDetailSheet({required this.contact, required this.userId, required this.fmt});

  @override
  ConsumerState<_ContactDetailSheet> createState() => _ContactDetailSheetState();
}

class _ContactDetailSheetState extends ConsumerState<_ContactDetailSheet> {
  List<KhataTransaction> _transactions = [];
  bool _loading = true;
  bool _showForm = false;

  @override
  void initState() {
    super.initState();
    _loadTransactions();
  }

  Future<void> _loadTransactions() async {
    try {
      final txns = await ref
          .read(khataRepositoryProvider)
          .getTransactions(widget.userId, widget.contact.id);
      if (mounted) setState(() { _transactions = txns; _loading = false; });
    } catch (_) {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final contact = ref.watch(khataProvider).contacts.firstWhere(
          (c) => c.id == widget.contact.id,
          orElse: () => widget.contact,
        );
    final isPositive = contact.balance >= 0;
    final balanceColor = isPositive ? Colors.green : Colors.redAccent;

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.75,
      maxChildSize: 0.95,
      builder: (ctx, scroll) => Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 8),
            width: 40,
            height: 4,
            decoration: BoxDecoration(color: Colors.grey[400], borderRadius: BorderRadius.circular(2)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(contact.name,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppTheme.textPrimary)),
                      if (contact.balance != 0)
                        Text(
                          isPositive
                              ? 'Owes you ₹${widget.fmt.format(contact.balance)}'
                              : 'You owe ₹${widget.fmt.format(contact.balance.abs())}',
                          style: TextStyle(color: balanceColor, fontSize: 14),
                        )
                      else
                        Text('All settled', style: TextStyle(color: AppTheme.textSecondary, fontSize: 14)),
                    ],
                  ),
                ),
                _DeleteButton(contact: contact, userId: widget.userId),
              ],
            ),
          ),
          const Divider(height: 1),
          if (_showForm)
            _AddTransactionForm(
              contact: contact,
              userId: widget.userId,
              onDone: () {
                setState(() => _showForm = false);
                _loadTransactions();
              },
            ),
          if (!_showForm)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => setState(() => _showForm = true),
                      icon: const Icon(Icons.add, size: 16),
                      label: const Text('Add Entry'),
                      style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primary),
                    ),
                  ),
                  if (contact.balance != 0) ...[
                    const SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () async {
                          await ref.read(khataProvider.notifier).settle(contact.id);
                          if (context.mounted) Navigator.pop(context);
                        },
                        icon: const Icon(Icons.check_circle_outline, size: 16),
                        label: const Text('Settle'),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          Expanded(
            child: _loading
                ? const Center(child: CircularProgressIndicator())
                : _transactions.isEmpty
                    ? Center(child: Text('No transactions yet', style: TextStyle(color: AppTheme.textSecondary)))
                    : ListView.builder(
                        controller: scroll,
                        padding: const EdgeInsets.only(bottom: 24),
                        itemCount: _transactions.length,
                        itemBuilder: (ctx, i) {
                          final t = _transactions[i];
                          final isGave = t.type == 'Gave';
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundColor: (isGave ? Colors.blue : Colors.green).withValues(alpha: 0.15),
                              child: Icon(
                                isGave ? Icons.arrow_upward : Icons.arrow_downward,
                                color: isGave ? Colors.blue : Colors.green,
                                size: 18,
                              ),
                            ),
                            title: Text(
                              '${isGave ? 'I Gave' : 'I Received'} ₹${widget.fmt.format(t.amount)}',
                              style: TextStyle(color: AppTheme.textPrimary, fontWeight: FontWeight.w600),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(DateFormat('dd MMM yyyy').format(t.date),
                                    style: TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                                if (t.notes != null)
                                  Text(t.notes!, style: TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                              ],
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete_outline, size: 18, color: Colors.redAccent),
                              onPressed: () async {
                                await ref.read(khataRepositoryProvider).deleteTransaction(
                                      widget.userId, contact.id, t.id);
                                await _loadTransactions();
                                if (mounted) ref.read(khataProvider.notifier).load(widget.userId);
                              },
                            ),
                          );
                        },
                      ),
          ),
        ],
      ),
    );
  }
}

class _DeleteButton extends ConsumerWidget {
  final KhataContact contact;
  final String userId;

  const _DeleteButton({required this.contact, required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: const Icon(Icons.delete_outline, color: Colors.redAccent),
      onPressed: () async {
        final ok = await showDialog<bool>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('Delete Contact'),
            content: Text('Delete ${contact.name}? All transactions will be removed.'),
            actions: [
              TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Cancel')),
              TextButton(
                  onPressed: () => Navigator.pop(ctx, true),
                  child: const Text('Delete', style: TextStyle(color: Colors.redAccent))),
            ],
          ),
        );
        if (ok == true && context.mounted) {
          await ref.read(khataProvider.notifier).deleteContact(contact.id);
          Navigator.pop(context);
        }
      },
    );
  }
}

class _AddTransactionForm extends ConsumerStatefulWidget {
  final KhataContact contact;
  final String userId;
  final VoidCallback onDone;

  const _AddTransactionForm({required this.contact, required this.userId, required this.onDone});

  @override
  ConsumerState<_AddTransactionForm> createState() => _AddTransactionFormState();
}

class _AddTransactionFormState extends ConsumerState<_AddTransactionForm> {
  bool _isGave = true;
  final _amountCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();
  DateTime _date = DateTime.now();
  bool _saving = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom, left: 16, right: 16, top: 12),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        border: Border(bottom: BorderSide(color: Colors.grey.withValues(alpha: 0.2))),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: ChoiceChip(
                  label: const Text('I Gave'),
                  selected: _isGave,
                  onSelected: (_) => setState(() => _isGave = true),
                  selectedColor: Colors.blue.withValues(alpha: 0.2),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ChoiceChip(
                  label: const Text('I Received'),
                  selected: !_isGave,
                  onSelected: (_) => setState(() => _isGave = false),
                  selectedColor: Colors.green.withValues(alpha: 0.2),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountCtrl,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: 'Amount ₹', border: OutlineInputBorder(), isDense: true),
                  style: TextStyle(color: AppTheme.textPrimary),
                ),
              ),
              const SizedBox(width: 8),
              OutlinedButton(
                onPressed: () async {
                  final picked = await showDatePicker(
                      context: context,
                      initialDate: _date,
                      firstDate: DateTime(2020),
                      lastDate: DateTime.now());
                  if (picked != null) setState(() => _date = picked);
                },
                child: Text(DateFormat('dd MMM').format(_date),
                    style: TextStyle(color: AppTheme.textPrimary)),
              ),
            ],
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _notesCtrl,
            decoration: const InputDecoration(
                labelText: 'Notes (optional)', border: OutlineInputBorder(), isDense: true),
            style: TextStyle(color: AppTheme.textPrimary),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              TextButton(onPressed: widget.onDone, child: const Text('Cancel')),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primary),
                onPressed: _saving ? null : _save,
                child: _saving
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2))
                    : const Text('Save'),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Future<void> _save() async {
    final amount = double.tryParse(_amountCtrl.text.trim());
    if (amount == null || amount <= 0) return;
    setState(() => _saving = true);
    try {
      await ref.read(khataRepositoryProvider).addTransaction(
            widget.userId,
            widget.contact.id,
            amount: amount,
            type: _isGave ? 1 : 2,
            date: _date,
            notes: _notesCtrl.text.trim().isEmpty ? null : _notesCtrl.text.trim(),
          );
      final newBalance = widget.contact.balance + (_isGave ? amount : -amount);
      ref.read(khataProvider.notifier).updateContactBalance(widget.contact.copyWith(balance: newBalance));
      widget.onDone();
    } catch (e) {
      if (mounted) setState(() => _saving = false);
    }
  }
}
