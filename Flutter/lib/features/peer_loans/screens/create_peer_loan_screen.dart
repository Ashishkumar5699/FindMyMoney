import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/peer_loan_provider.dart';

class CreatePeerLoanScreen extends ConsumerStatefulWidget {
  const CreatePeerLoanScreen({super.key});

  @override
  ConsumerState<CreatePeerLoanScreen> createState() => _CreatePeerLoanScreenState();
}

class _CreatePeerLoanScreenState extends ConsumerState<CreatePeerLoanScreen> {
  final _nameCtrl = TextEditingController();
  final _amountCtrl = TextEditingController();
  final _descCtrl = TextEditingController();
  String _direction = 'GAVE'; // GAVE = I lent money; RECEIVED = I borrowed
  bool _saving = false;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _amountCtrl.dispose();
    _descCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final name = _nameCtrl.text.trim();
    final amount = double.tryParse(_amountCtrl.text.trim());
    if (name.isEmpty || amount == null || amount <= 0) return;

    setState(() => _saving = true);
    final userId = ref.read(authProvider).user?.id;
    if (userId == null) return;

    final loan = await ref.read(peerLoanProvider.notifier).createLoan(
          userId: userId,
          contactName: name,
          direction: _direction,
          amount: amount,
          description: _descCtrl.text.trim().isEmpty ? null : _descCtrl.text.trim(),
        );

    if (!mounted) return;
    if (loan != null) {
      // Go to QR/token display screen
      context.pushReplacement('/peer-loans/show-token', extra: loan);
    } else {
      setState(() => _saving = false);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to create loan')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.surface,
      appBar: AppBar(
        title: const Text('New Peer Loan'),
        backgroundColor: AppTheme.surface,
        foregroundColor: AppTheme.textPrimary,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Direction toggle
            const Text('Type', style: TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: _DirectionBtn(
                    label: 'I Lent',
                    sublabel: '(they owe me)',
                    selected: _direction == 'GAVE',
                    color: const Color(0xFF4CAF50),
                    onTap: () => setState(() => _direction = 'GAVE'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _DirectionBtn(
                    label: 'I Borrowed',
                    sublabel: '(I owe them)',
                    selected: _direction == 'RECEIVED',
                    color: Colors.redAccent,
                    onTap: () => setState(() => _direction = 'RECEIVED'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            _label('Friend\'s Name'),
            const SizedBox(height: 8),
            _field(_nameCtrl, 'e.g. Rahul', TextInputType.name),
            const SizedBox(height: 16),

            _label('Amount (₹)'),
            const SizedBox(height: 8),
            _field(_amountCtrl, '0.00', const TextInputType.numberWithOptions(decimal: true)),
            const SizedBox(height: 16),

            _label('Note (optional)'),
            const SizedBox(height: 8),
            _field(_descCtrl, 'e.g. Dinner, travel...', TextInputType.text),
            const SizedBox(height: 32),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _saving ? null : _submit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.primary,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: _saving
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                    : const Text('Create & Get Verification Code',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _label(String text) =>
      Text(text, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 13));

  Widget _field(TextEditingController ctrl, String hint, TextInputType type) => TextField(
        controller: ctrl,
        keyboardType: type,
        style: const TextStyle(color: AppTheme.textPrimary),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: AppTheme.textSecondary),
          filled: true,
          fillColor: AppTheme.card,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      );
}

class _DirectionBtn extends StatelessWidget {
  final String label;
  final String sublabel;
  final bool selected;
  final Color color;
  final VoidCallback onTap;

  const _DirectionBtn({
    required this.label,
    required this.sublabel,
    required this.selected,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: selected ? color.withValues(alpha: 0.15) : AppTheme.card,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected ? color : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Column(
          children: [
            Text(label,
                style: TextStyle(
                    color: selected ? color : AppTheme.textPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 15)),
            Text(sublabel,
                style: const TextStyle(color: AppTheme.textSecondary, fontSize: 11)),
          ],
        ),
      ),
    );
  }
}
