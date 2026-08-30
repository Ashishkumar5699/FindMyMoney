import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../models/peer_loan.dart';
import '../repositories/peer_loan_repository.dart';
import '../../../core/di/providers.dart';

/// Shown after scanning QR or entering code — confirm or reject with reason.
class ConfirmLoanScreen extends ConsumerStatefulWidget {
  final String token;
  final PeerLoanPreview preview;

  const ConfirmLoanScreen({
    super.key,
    required this.token,
    required this.preview,
  });

  @override
  ConsumerState<ConfirmLoanScreen> createState() => _ConfirmLoanScreenState();
}

class _ConfirmLoanScreenState extends ConsumerState<ConfirmLoanScreen> {
  final _reasonCtrl = TextEditingController();
  bool _showRejectForm = false;
  bool _loading = false;
  final _fmt = NumberFormat('#,##0.00', 'en_IN');

  @override
  void dispose() {
    _reasonCtrl.dispose();
    super.dispose();
  }

  Future<void> _accept() async {
    setState(() => _loading = true);
    try {
      final repo = PeerLoanRepository(ref.read(dioProvider));
      if (widget.preview.type == 'loan') {
        await repo.verifyLoan(widget.token);
      } else {
        await repo.verifyRepayment(widget.token);
      }
      if (!mounted) return;
      _done('Verified! The loan is now confirmed.');
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
        setState(() => _loading = false);
      }
    }
  }

  Future<void> _reject() async {
    final reason = _reasonCtrl.text.trim();
    if (reason.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a reason for rejection')),
      );
      return;
    }
    setState(() => _loading = true);
    try {
      final repo = PeerLoanRepository(ref.read(dioProvider));
      if (widget.preview.type == 'loan') {
        await repo.rejectLoan(widget.token, reason);
      } else {
        await repo.rejectRepayment(widget.token, reason);
      }
      if (!mounted) return;
      _done('Rejected. Your reason has been recorded.');
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
        setState(() => _loading = false);
      }
    }
  }

  void _done(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 3)),
    );
    context.go('/peer-loans');
  }

  @override
  Widget build(BuildContext context) {
    final p = widget.preview;
    final isLoan = p.type == 'loan';
    // From the other party's perspective, flip direction label:
    // If creator GAVE (lent money), the other party RECEIVED (owes)
    final theyLent = p.direction == 'GAVE';
    final color = theyLent ? const Color(0xFF4CAF50) : Colors.redAccent;
    final headline = theyLent
        ? '${p.contactName} lent you'
        : '${p.contactName} borrowed from you';
    final typeLabel = isLoan ? 'Loan' : 'Repayment';

    return Scaffold(
      backgroundColor: AppTheme.surface,
      appBar: AppBar(
        title: Text('Confirm $typeLabel'),
        backgroundColor: AppTheme.surface,
        foregroundColor: AppTheme.textPrimary,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Icon(
              theyLent ? Icons.arrow_downward_rounded : Icons.arrow_upward_rounded,
              size: 56,
              color: color,
            ),
            const SizedBox(height: 12),
            Text(headline,
                style: const TextStyle(
                    color: AppTheme.textSecondary, fontSize: 15)),
            const SizedBox(height: 8),
            Text('₹${_fmt.format(p.amount)}',
                style: TextStyle(
                    color: color, fontSize: 40, fontWeight: FontWeight.bold)),
            if (p.description != null) ...[
              const SizedBox(height: 8),
              Text(p.description!,
                  style: const TextStyle(
                      color: AppTheme.textSecondary, fontSize: 14)),
            ],
            const SizedBox(height: 32),

            if (!_showRejectForm) ...[
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: _loading ? null : _accept,
                  icon: const Icon(Icons.check_circle_outline),
                  label: const Text('Accept & Verify',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton.icon(
                  onPressed: _loading
                      ? null
                      : () => setState(() => _showRejectForm = true),
                  icon: const Icon(Icons.cancel_outlined),
                  label: const Text('Reject',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.redAccent),
                    foregroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),
            ] else ...[
              // Reject form — reason is required
              const Text(
                'Why are you rejecting this?',
                style: TextStyle(
                    color: AppTheme.textPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              const Text(
                'Your reason will be shown to the other party.',
                style:
                    TextStyle(color: AppTheme.textSecondary, fontSize: 12),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _reasonCtrl,
                autofocus: true,
                maxLines: 3,
                style: const TextStyle(color: AppTheme.textPrimary),
                decoration: InputDecoration(
                  hintText: 'e.g. Amount is wrong, I never received this money...',
                  hintStyle:
                      const TextStyle(color: AppTheme.textSecondary, fontSize: 13),
                  filled: true,
                  fillColor: AppTheme.card,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => setState(() => _showRejectForm = false),
                      child: const Text('Back'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _loading ? null : _reject,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      child: _loading
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(
                                  strokeWidth: 2, color: Colors.white))
                          : const Text('Confirm Rejection'),
                    ),
                  ),
                ],
              ),
            ],

            if (_loading)
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: CircularProgressIndicator(color: AppTheme.primary),
              ),
          ],
        ),
      ),
    );
  }
}
