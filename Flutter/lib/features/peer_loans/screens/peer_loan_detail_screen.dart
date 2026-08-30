import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../../auth/providers/auth_provider.dart';
import '../models/peer_loan.dart';
import '../providers/peer_loan_provider.dart';

class PeerLoanDetailScreen extends ConsumerStatefulWidget {
  final PeerLoan loan;

  const PeerLoanDetailScreen({super.key, required this.loan});

  @override
  ConsumerState<PeerLoanDetailScreen> createState() =>
      _PeerLoanDetailScreenState();
}

class _PeerLoanDetailScreenState extends ConsumerState<PeerLoanDetailScreen> {
  final _fmt = NumberFormat('#,##0.00', 'en_IN');

  PeerLoan get _loan {
    final loans = ref.watch(peerLoanProvider).loans;
    return loans.firstWhere((l) => l.id == widget.loan.id,
        orElse: () => widget.loan);
  }

  @override
  Widget build(BuildContext context) {
    final loan = _loan;
    final color = loan.isGave ? const Color(0xFF4CAF50) : Colors.redAccent;
    final pct = loan.amount > 0 ? (1 - loan.balance / loan.amount) : 1.0;

    return Scaffold(
      backgroundColor: AppTheme.surface,
      appBar: AppBar(
        title: Text(loan.contactName),
        backgroundColor: AppTheme.surface,
        foregroundColor: AppTheme.textPrimary,
        elevation: 0,
        actions: [
          if (loan.isPending)
            TextButton.icon(
              onPressed: () =>
                  context.push('/peer-loans/show-token', extra: loan),
              icon: const Icon(Icons.qr_code, size: 18),
              label: const Text('Show Code'),
              style: TextButton.styleFrom(foregroundColor: AppTheme.primary),
            ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Header card
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: color.withValues(alpha: 0.3)),
            ),
            child: Column(
              children: [
                Text(
                  loan.isGave ? 'You lent' : 'You borrowed',
                  style: TextStyle(color: color, fontSize: 13),
                ),
                const SizedBox(height: 4),
                Text('₹${_fmt.format(loan.amount)}',
                    style: TextStyle(
                        color: color,
                        fontSize: 36,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                _StatusChip(loan.status),
                if (loan.isRejected && loan.rejectionReason != null) ...[
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.redAccent.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.info_outline,
                            color: Colors.redAccent, size: 16),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Rejected: ${loan.rejectionReason}',
                            style: const TextStyle(
                                color: Colors.redAccent, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),

          if (loan.isVerified && loan.balance > 0) ...[
            const SizedBox(height: 20),
            // Progress bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Balance: ₹${_fmt.format(loan.balance)}',
                    style: const TextStyle(
                        color: AppTheme.textPrimary,
                        fontWeight: FontWeight.w600)),
                Text('${(pct * 100).toStringAsFixed(0)}% repaid',
                    style: const TextStyle(
                        color: AppTheme.textSecondary, fontSize: 12)),
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: pct.clamp(0.0, 1.0),
                minHeight: 8,
                backgroundColor: AppTheme.card,
                color: const Color(0xFF4CAF50),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => _showAddRepaymentSheet(context, loan),
                icon: const Icon(Icons.payments_outlined),
                label: const Text('Record Repayment'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),
          ],

          // Repayment history
          if (loan.repayments.isNotEmpty) ...[
            const SizedBox(height: 24),
            const Text('Repayments',
                style: TextStyle(
                    color: AppTheme.textSecondary,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5)),
            const SizedBox(height: 8),
            ...loan.repayments.map((r) => _RepaymentTile(r: r, fmt: _fmt)),
          ],
        ],
      ),
    );
  }

  void _showAddRepaymentSheet(BuildContext context, PeerLoan loan) {
    final amtCtrl = TextEditingController();
    final descCtrl = TextEditingController();
    bool saving = false;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppTheme.card,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setModalState) => Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(ctx).viewInsets.bottom,
              left: 20,
              right: 20,
              top: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Record Repayment',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.textPrimary)),
              Text('Balance: ₹${_fmt.format(loan.balance)}',
                  style: TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
              const SizedBox(height: 16),
              TextField(
                controller: amtCtrl,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                autofocus: true,
                decoration: const InputDecoration(
                    labelText: 'Amount ₹', border: OutlineInputBorder()),
                style: TextStyle(color: AppTheme.textPrimary),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: descCtrl,
                decoration: const InputDecoration(
                    labelText: 'Note (optional)', border: OutlineInputBorder()),
                style: TextStyle(color: AppTheme.textPrimary),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: saving
                      ? null
                      : () async {
                          final amt = double.tryParse(amtCtrl.text.trim());
                          if (amt == null || amt <= 0) return;
                          setModalState(() => saving = true);
                          final userId =
                              ref.read(authProvider).user?.id ?? '';
                          final repayment = await ref
                              .read(peerLoanProvider.notifier)
                              .addRepayment(
                                userId: userId,
                                loanId: loan.id,
                                amount: amt,
                                description: descCtrl.text.trim().isEmpty
                                    ? null
                                    : descCtrl.text.trim(),
                              );
                          if (!ctx.mounted) return;
                          Navigator.pop(ctx);
                          if (repayment != null) {
                            context.push('/peer-loans/show-repayment-token',
                                extra: repayment);
                          }
                        },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primary),
                  child: saving
                      ? const SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(
                              strokeWidth: 2, color: Colors.white))
                      : const Text('Save & Get Verification Code'),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  final String status;
  const _StatusChip(this.status);

  @override
  Widget build(BuildContext context) {
    final Color color;
    switch (status) {
      case 'verified':
        color = const Color(0xFF4CAF50);
      case 'pending':
        color = Colors.orange;
      case 'rejected':
        color = Colors.redAccent;
      default:
        color = AppTheme.textSecondary;
    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status[0].toUpperCase() + status.substring(1),
        style:
            TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class _RepaymentTile extends StatelessWidget {
  final PeerLoanRepayment r;
  final NumberFormat fmt;
  const _RepaymentTile({required this.r, required this.fmt});

  @override
  Widget build(BuildContext context) {
    final Color color;
    switch (r.status) {
      case 'verified':
        color = const Color(0xFF4CAF50);
      case 'pending':
        color = Colors.orange;
      default:
        color = Colors.redAccent;
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: AppTheme.card,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(Icons.undo, color: color, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('₹${fmt.format(r.amount)}',
                    style: TextStyle(
                        color: AppTheme.textPrimary,
                        fontWeight: FontWeight.w600)),
                if (r.description != null)
                  Text(r.description!,
                      style: const TextStyle(
                          color: AppTheme.textSecondary, fontSize: 12)),
                if (r.isRejected && r.rejectionReason != null)
                  Text('Rejected: ${r.rejectionReason}',
                      style: const TextStyle(
                          color: Colors.redAccent, fontSize: 11)),
              ],
            ),
          ),
          _StatusChip(r.status),
        ],
      ),
    );
  }
}
