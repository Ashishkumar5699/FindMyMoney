import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../../features/friends/providers/friend_provider.dart';
import '../../../features/plans/providers/plan_provider.dart';
import '../../../shared/theme/app_theme.dart';
import '../../../shared/widgets/bb_button.dart';
import '../providers/split_provider.dart';

class CreateSplitScreen extends StatefulWidget {
  const CreateSplitScreen({super.key});

  @override
  State<CreateSplitScreen> createState() => _CreateSplitScreenState();
}

class _CreateSplitScreenState extends State<CreateSplitScreen> {
  final _totalCtrl = TextEditingController();
  final _descCtrl  = TextEditingController();
  String? _selectedPlanId;
  final Map<String, TextEditingController> _amountCtrls = {};
  final Set<String> _selectedFriendIds = {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PlanProvider>().load();
      context.read<FriendProvider>().load();
    });
  }

  @override
  void dispose() {
    _totalCtrl.dispose();
    _descCtrl.dispose();
    for (final c in _amountCtrls.values) { c.dispose(); }
    super.dispose();
  }

  void _splitEqually() {
    final total = double.tryParse(_totalCtrl.text) ?? 0;
    final count = _selectedFriendIds.length + 1; // +1 for self (payer)
    if (count == 0 || total == 0) return;
    final each = (total / count).toStringAsFixed(0);
    for (final id in _selectedFriendIds) {
      _amountCtrls[id]?.text = each;
    }
    setState(() {});
  }

  Future<void> _create() async {
    if (_selectedPlanId == null) { _snack('Select a plan'); return; }
    final total = double.tryParse(_totalCtrl.text.trim()) ?? 0;
    if (total <= 0) { _snack('Enter total amount'); return; }
    if (_selectedFriendIds.isEmpty) { _snack('Select at least one person to split with'); return; }

    final participants = <Map<String, dynamic>>[];
    for (final id in _selectedFriendIds) {
      final amt = double.tryParse(_amountCtrls[id]?.text.trim() ?? '') ?? 0;
      if (amt <= 0) { _snack('Enter amount for all participants'); return; }
      participants.add({'accountId': id, 'amount': amt});
    }

    final provider = context.read<SplitProvider>();
    final ok = await provider.create(
      planId:       _selectedPlanId!,
      totalAmount:  total,
      description:  _descCtrl.text.trim(),
      participants: participants,
    );
    if (!mounted) return;
    if (ok) {
      Navigator.pop(context);
    } else {
      _snack(provider.error ?? 'Failed to create split', isError: true);
      provider.clearError();
    }
  }

  void _snack(String msg, {bool isError = false}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      backgroundColor: isError ? AppTheme.error : AppTheme.primary,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final plans   = context.watch<PlanProvider>().plans.where((p) => p.isActive).toList();
    final friends = context.watch<FriendProvider>().friends;
    final loading = context.watch<SplitProvider>().loading;

    return Scaffold(
      appBar: AppBar(title: const Text('New Split')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

          // Plan picker
          const Text('PLAN', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppTheme.primary, letterSpacing: 1)),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(color: AppTheme.surfaceCard, borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                value: _selectedPlanId,
                hint: const Text('Select a plan', style: TextStyle(color: AppTheme.textSecondary)),
                dropdownColor: AppTheme.surfaceCard,
                style: const TextStyle(color: AppTheme.textPrimary),
                items: plans.map((p) => DropdownMenuItem(value: p.planId, child: Text(p.title))).toList(),
                onChanged: (v) => setState(() => _selectedPlanId = v),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Total amount
          const Text('TOTAL AMOUNT (₹)', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppTheme.primary, letterSpacing: 1)),
          const SizedBox(height: 8),
          TextFormField(
            controller: _totalCtrl,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))],
            style: const TextStyle(color: AppTheme.textPrimary, fontSize: 24, fontWeight: FontWeight.w700),
            decoration: const InputDecoration(prefixText: '₹ ', prefixStyle: TextStyle(color: AppTheme.primary, fontSize: 24, fontWeight: FontWeight.w700)),
          ),
          const SizedBox(height: 20),

          // Description
          TextFormField(
            controller: _descCtrl,
            style: const TextStyle(color: AppTheme.textPrimary),
            decoration: const InputDecoration(labelText: 'Description (optional)', hintText: 'e.g. Dinner at rooftop'),
          ),
          const SizedBox(height: 24),

          // Friends
          if (friends.isNotEmpty) ...[
            Row(children: [
              const Expanded(child: Text('SPLIT WITH', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppTheme.primary, letterSpacing: 1))),
              if (_selectedFriendIds.isNotEmpty)
                TextButton(onPressed: _splitEqually, child: const Text('Split equally', style: TextStyle(color: AppTheme.primary, fontSize: 12))),
            ]),
            const SizedBox(height: 8),
            ...friends.map((f) {
              final selected = _selectedFriendIds.contains(f.accountId);
              _amountCtrls.putIfAbsent(f.accountId, () => TextEditingController());
              return Column(children: [
                CheckboxListTile(
                  value: selected,
                  onChanged: (v) => setState(() {
                    if (v == true) { _selectedFriendIds.add(f.accountId); } else { _selectedFriendIds.remove(f.accountId); }
                  }),
                  title: Text(f.displayName, style: const TextStyle(color: AppTheme.textPrimary)),
                  subtitle: Text('@${f.userName}', style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                  secondary: CircleAvatar(
                    backgroundColor: AppTheme.primary,
                    child: Text(f.initials, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12)),
                  ),
                  activeColor: AppTheme.primary,
                  contentPadding: EdgeInsets.zero,
                ),
                if (selected)
                  Padding(
                    padding: const EdgeInsets.only(left: 56, bottom: 8),
                    child: TextFormField(
                      controller: _amountCtrls[f.accountId],
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))],
                      style: const TextStyle(color: AppTheme.textPrimary),
                      decoration: InputDecoration(
                        labelText: '${f.displayName}\'s share (₹)',
                        isDense: true,
                      ),
                    ),
                  ),
              ]);
            }),
          ] else
            const Text('Add friends first to split with them', style: TextStyle(color: AppTheme.textSecondary)),

          const SizedBox(height: 40),
          BbButton(label: 'Create Split', onTap: _create, loading: loading),
        ]),
      ),
    );
  }
}
