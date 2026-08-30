import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';
import '../../../core/theme/app_theme.dart';
import '../models/peer_loan.dart';

class ShowRepaymentTokenScreen extends StatelessWidget {
  final PeerLoanRepayment repayment;

  const ShowRepaymentTokenScreen({super.key, required this.repayment});

  String get _qrPayload => jsonEncode({
        'type': 'peer_loan',
        'repaymentId': repayment.id,
        'token': repayment.verificationToken,
        'amount': repayment.amount,
      });

  void _share(BuildContext context) {
    final amt =
        '₹${NumberFormat('#,##0.00', 'en_IN').format(repayment.amount)}';
    Share.share(
      'I have repaid $amt.\n\n'
      'Please verify this in FindMyMoney app.\n'
      'Code: ${repayment.verificationToken}\n'
      '(or scan the QR in the app)',
    );
  }

  @override
  Widget build(BuildContext context) {
    final fmt = NumberFormat('#,##0.00', 'en_IN');

    return Scaffold(
      backgroundColor: AppTheme.surface,
      appBar: AppBar(
        title: const Text('Repayment Verification'),
        backgroundColor: AppTheme.surface,
        foregroundColor: AppTheme.textPrimary,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () => context.go('/peer-loans'),
            child:
                const Text('Done', style: TextStyle(color: AppTheme.primary)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF4CAF50).withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                    color: const Color(0xFF4CAF50).withValues(alpha: 0.3)),
              ),
              child: Column(
                children: [
                  const Text('Repayment of',
                      style: TextStyle(
                          color: Color(0xFF4CAF50), fontSize: 13)),
                  const SizedBox(height: 4),
                  Text('₹${fmt.format(repayment.amount)}',
                      style: const TextStyle(
                          color: Color(0xFF4CAF50),
                          fontSize: 32,
                          fontWeight: FontWeight.bold)),
                  if (repayment.description != null) ...[
                    const SizedBox(height: 4),
                    Text(repayment.description!,
                        style: const TextStyle(
                            color: AppTheme.textSecondary, fontSize: 13)),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 28),

            const Text('IN-PERSON',
                style: TextStyle(
                    color: AppTheme.textSecondary,
                    fontSize: 11,
                    letterSpacing: 1.2)),
            const SizedBox(height: 4),
            const Text('Show this QR to your friend',
                style:
                    TextStyle(color: AppTheme.textPrimary, fontSize: 15)),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: QrImageView(
                data: _qrPayload,
                version: QrVersions.auto,
                size: 220,
              ),
            ),
            const SizedBox(height: 28),

            const Text('REMOTE',
                style: TextStyle(
                    color: AppTheme.textSecondary,
                    fontSize: 11,
                    letterSpacing: 1.2)),
            const SizedBox(height: 4),
            const Text('Share this code via WhatsApp / SMS',
                style:
                    TextStyle(color: AppTheme.textPrimary, fontSize: 15)),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                Clipboard.setData(
                    ClipboardData(text: repayment.verificationToken));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Code copied')),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32, vertical: 16),
                decoration: BoxDecoration(
                  color: AppTheme.card,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                      color: AppTheme.primary.withValues(alpha: 0.4)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      repayment.verificationToken,
                      style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.primary,
                          letterSpacing: 8),
                    ),
                    const SizedBox(width: 12),
                    const Icon(Icons.copy,
                        color: AppTheme.textSecondary, size: 20),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () => _share(context),
                icon: const Icon(Icons.share_outlined),
                label: const Text('Share via WhatsApp / SMS'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  side: const BorderSide(color: AppTheme.primary),
                  foregroundColor: AppTheme.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'The repayment is confirmed once your friend\nscans or enters the code.',
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: AppTheme.textSecondary, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
