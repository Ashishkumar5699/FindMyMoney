import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';
import '../../../core/theme/app_theme.dart';
import '../models/peer_loan.dart';

/// Shown immediately after creating a loan.
/// Displays both the QR code (for in-person scanning) and the 6-digit code
/// (for sharing via WhatsApp / SMS when the other party is remote).
class ShowTokenScreen extends StatelessWidget {
  final PeerLoan loan;

  const ShowTokenScreen({super.key, required this.loan});

  String get _qrPayload => jsonEncode({
        'type': 'peer_loan',
        'id': loan.id,
        'token': loan.verificationToken,
        'amount': loan.amount,
        'direction': loan.direction,
        'contact': loan.contactName,
      });

  void _share() {
    final dir = loan.isGave ? 'lent you' : 'borrowed from you';
    final amt = '₹${NumberFormat('#,##0.00', 'en_IN').format(loan.amount)}';
    Share.share(
      'Hi ${loan.contactName}, I $dir $amt.\n\n'
      'Please verify this in FindMyMoney app.\n'
      'Code: ${loan.verificationToken}\n'
      '(or scan the QR in the app)',
    );
  }

  @override
  Widget build(BuildContext context) {
    final fmt = NumberFormat('#,##0.00', 'en_IN');
    final dirLabel = loan.isGave ? 'You lent' : 'You borrowed';
    final color = loan.isGave ? const Color(0xFF4CAF50) : Colors.redAccent;

    return Scaffold(
      backgroundColor: AppTheme.surface,
      appBar: AppBar(
        title: const Text('Verify This Loan'),
        backgroundColor: AppTheme.surface,
        foregroundColor: AppTheme.textPrimary,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () => context.go('/peer-loans'),
            child: const Text('Done', style: TextStyle(color: AppTheme.primary)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // Loan summary
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: color.withValues(alpha: 0.3)),
              ),
              child: Column(
                children: [
                  Text(dirLabel,
                      style: TextStyle(color: color, fontSize: 13, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 4),
                  Text('₹${fmt.format(loan.amount)}',
                      style: TextStyle(
                          color: color, fontSize: 32, fontWeight: FontWeight.bold)),
                  Text(loan.contactName,
                      style: const TextStyle(
                          color: AppTheme.textPrimary, fontSize: 18, fontWeight: FontWeight.w600)),
                  if (loan.description != null) ...[
                    const SizedBox(height: 4),
                    Text(loan.description!,
                        style: const TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 28),

            // QR code
            const Text('IN-PERSON',
                style: TextStyle(
                    color: AppTheme.textSecondary, fontSize: 11, letterSpacing: 1.2)),
            const SizedBox(height: 4),
            const Text('Show this QR to your friend',
                style: TextStyle(color: AppTheme.textPrimary, fontSize: 15)),
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

            // 6-digit code
            const Text('REMOTE',
                style: TextStyle(
                    color: AppTheme.textSecondary, fontSize: 11, letterSpacing: 1.2)),
            const SizedBox(height: 4),
            const Text('Share this code via WhatsApp / SMS',
                style: TextStyle(color: AppTheme.textPrimary, fontSize: 15)),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                Clipboard.setData(ClipboardData(text: loan.verificationToken));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Code copied')),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                decoration: BoxDecoration(
                  color: AppTheme.card,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: AppTheme.primary.withValues(alpha: 0.4)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      loan.verificationToken,
                      style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.primary,
                          letterSpacing: 8),
                    ),
                    const SizedBox(width: 12),
                    const Icon(Icons.copy, color: AppTheme.textSecondary, size: 20),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: _share,
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
              'The loan is marked Verified once your friend\naccepts using the code or QR.',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppTheme.textSecondary, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
