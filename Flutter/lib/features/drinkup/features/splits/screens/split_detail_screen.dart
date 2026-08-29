import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../shared/theme/app_theme.dart';
import '../models/split_models.dart';
import '../providers/split_provider.dart';

class SplitDetailScreen extends StatelessWidget {
  final SplitModel split;
  final String     myAccountId;
  const SplitDetailScreen({super.key, required this.split, required this.myAccountId});

  @override
  Widget build(BuildContext context) {
    final myShare = split.myShare(myAccountId);
    final iOwe   = myShare != null && !myShare.settled;

    return Scaffold(
      appBar: AppBar(title: Text(split.planTitle.isEmpty ? 'Split' : split.planTitle)),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          // Summary card
          Container(
            decoration: BoxDecoration(color: AppTheme.surfaceCard, borderRadius: BorderRadius.circular(16)),
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              Text(split.formattedAmount,
                  style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w800, color: AppTheme.primary)),
              const SizedBox(height: 4),
              Text('Total bill', style: const TextStyle(color: AppTheme.textSecondary)),
              if (split.description.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(split.description, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
              ],
              const SizedBox(height: 12),
              Text('Paid by ${split.paidByName}',
                  style: const TextStyle(color: AppTheme.textPrimary, fontWeight: FontWeight.w600)),
            ]),
          ),
          const SizedBox(height: 24),

          // Shares list
          const Text('SHARES', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppTheme.primary, letterSpacing: 1)),
          const SizedBox(height: 12),
          ...split.shares.map((share) => _ShareTile(
            share: share,
            isMe: share.accountId == myAccountId,
          )),

          // Settle button
          if (iOwe) ...[
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primary,
                foregroundColor: Colors.black,
                minimumSize: const Size.fromHeight(52),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
              ),
              onPressed: () async {
                await context.read<SplitProvider>().settle(split.splitId);
                if (context.mounted) Navigator.pop(context);
              },
              child: Text('Mark my share settled (₹${myShare.amount.toStringAsFixed(0)})',
                  style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
            ),
          ],
        ],
      ),
    );
  }
}

class _ShareTile extends StatelessWidget {
  final SplitShareModel share;
  final bool isMe;
  const _ShareTile({required this.share, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppTheme.surfaceCard,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: isMe ? AppTheme.primary.withValues(alpha: 0.4) : Colors.transparent),
      ),
      child: Row(children: [
        CircleAvatar(
          radius: 18,
          backgroundColor: share.settled ? Colors.green.withValues(alpha: 0.2) : AppTheme.primary.withValues(alpha: 0.2),
          child: Icon(
            share.settled ? Icons.check : Icons.schedule,
            size: 16,
            color: share.settled ? Colors.green : AppTheme.primary,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            isMe ? '${share.displayName} (you)' : share.displayName,
            style: const TextStyle(color: AppTheme.textPrimary, fontWeight: FontWeight.w500),
          ),
        ),
        Text('₹${share.amount.toStringAsFixed(0)}',
            style: TextStyle(
              color: share.settled ? AppTheme.textSecondary : AppTheme.primary,
              fontWeight: FontWeight.w700,
            )),
        const SizedBox(width: 8),
        Text(share.settled ? 'Settled' : 'Pending',
            style: TextStyle(
              color: share.settled ? Colors.green : AppTheme.textSecondary,
              fontSize: 11,
            )),
      ]),
    );
  }
}
