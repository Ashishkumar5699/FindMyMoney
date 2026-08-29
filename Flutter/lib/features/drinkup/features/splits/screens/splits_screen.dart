import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/storage/secure_storage.dart';
import '../../../shared/theme/app_theme.dart';
import '../models/split_models.dart';
import '../providers/split_provider.dart';
import 'create_split_screen.dart';
import 'split_detail_screen.dart';

class SplitsScreen extends StatefulWidget {
  const SplitsScreen({super.key});

  @override
  State<SplitsScreen> createState() => _SplitsScreenState();
}

class _SplitsScreenState extends State<SplitsScreen> {
  String? _myAccountId;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    _myAccountId = await SecureStorage().getAccountId();
    if (mounted) {
      context.read<SplitProvider>().loadUnsettled();
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<SplitProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Splits')),
      body: provider.loading && provider.splits.isEmpty
          ? const Center(child: CircularProgressIndicator(color: AppTheme.primary))
          : provider.splits.isEmpty
              ? const Center(child: Text('No unsettled splits 🎉', style: TextStyle(color: AppTheme.textSecondary)))
              : RefreshIndicator(
                  color: AppTheme.primary,
                  onRefresh: provider.loadUnsettled,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: provider.splits.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                    itemBuilder: (_, i) => _SplitCard(
                      split: provider.splits[i],
                      myAccountId: _myAccountId ?? '',
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => SplitDetailScreen(split: provider.splits[i], myAccountId: _myAccountId ?? '')),
                      ).then((_) => provider.loadUnsettled()),
                    ),
                  ),
                ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const CreateSplitScreen()),
        ).then((_) => provider.loadUnsettled()),
        backgroundColor: AppTheme.primary,
        foregroundColor: Colors.black,
        icon: const Icon(Icons.add),
        label: const Text('New Split', style: TextStyle(fontWeight: FontWeight.w700)),
      ),
    );
  }
}

class _SplitCard extends StatelessWidget {
  final SplitModel split;
  final String     myAccountId;
  final VoidCallback onTap;
  const _SplitCard({required this.split, required this.myAccountId, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final myShare = split.myShare(myAccountId);
    final iOwe   = myShare != null && !myShare.settled;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.surfaceCard,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: iOwe ? AppTheme.primary.withValues(alpha: 0.4) : Colors.transparent),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Expanded(
              child: Text(
                split.planTitle.isEmpty ? split.description : split.planTitle,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: AppTheme.textPrimary),
              ),
            ),
            Text(split.formattedAmount, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: AppTheme.primary)),
          ]),
          const SizedBox(height: 6),
          Text('Paid by ${split.paidByName}', style: const TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
          if (split.description.isNotEmpty && split.planTitle.isNotEmpty)
            Text(split.description, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
          const SizedBox(height: 10),
          Row(children: [
            if (iOwe) ...[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(color: AppTheme.primary.withValues(alpha: 0.15), borderRadius: BorderRadius.circular(20)),
                child: Text('You owe ₹${myShare.amount.toStringAsFixed(0)}',
                    style: const TextStyle(color: AppTheme.primary, fontSize: 12, fontWeight: FontWeight.w600)),
              ),
              const Spacer(),
            ] else
              const Spacer(),  // share settled or not my split
            Text('${split.settledCount}/${split.shares.length} settled',
                style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
          ]),
        ]),
      ),
    );
  }
}
