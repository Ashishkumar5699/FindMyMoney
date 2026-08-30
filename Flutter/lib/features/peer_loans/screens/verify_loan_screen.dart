import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../../../core/theme/app_theme.dart';
import '../repositories/peer_loan_repository.dart';
import '../../../core/di/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Entry point for the "other party" — they either:
///   • Scan a QR code (tab 0)
///   • Type the 6-digit code manually (tab 1)
class VerifyLoanScreen extends ConsumerStatefulWidget {
  const VerifyLoanScreen({super.key});

  @override
  ConsumerState<VerifyLoanScreen> createState() => _VerifyLoanScreenState();
}

class _VerifyLoanScreenState extends ConsumerState<VerifyLoanScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabs;
  final _codeCtrl = TextEditingController();
  bool _scanning = true;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabs.dispose();
    _codeCtrl.dispose();
    super.dispose();
  }

  Future<void> _lookupToken(String token) async {
    if (_loading) return;
    setState(() => _loading = true);
    try {
      final repo = PeerLoanRepository(ref.read(dioProvider));
      final preview = await repo.getPreview(token.trim());
      if (!mounted) return;
      if (preview == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Invalid or expired code')),
        );
        setState(() => _loading = false);
        return;
      }
      // Navigate to confirmation screen
      context.push('/peer-loans/confirm', extra: {
        'token': token.trim(),
        'preview': preview,
      });
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to look up code')),
        );
      }
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  void _onQrDetect(BarcodeCapture capture) {
    if (!_scanning) return;
    final raw = capture.barcodes.firstOrNull?.rawValue;
    if (raw == null) return;
    setState(() => _scanning = false);

    // Try to parse as JSON peer_loan payload
    try {
      final payload = jsonDecode(raw) as Map<String, dynamic>;
      if (payload['type'] == 'peer_loan') {
        _lookupToken(payload['token'] as String);
        return;
      }
    } catch (_) {}

    // Fallback: treat raw as token directly
    _lookupToken(raw);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.surface,
      appBar: AppBar(
        title: const Text('Verify a Loan'),
        backgroundColor: AppTheme.surface,
        foregroundColor: AppTheme.textPrimary,
        elevation: 0,
        bottom: TabBar(
          controller: _tabs,
          labelColor: AppTheme.primary,
          unselectedLabelColor: AppTheme.textSecondary,
          indicatorColor: AppTheme.primary,
          tabs: const [
            Tab(icon: Icon(Icons.qr_code_scanner), text: 'Scan QR'),
            Tab(icon: Icon(Icons.keyboard), text: 'Enter Code'),
          ],
          onTap: (_) => setState(() => _scanning = true),
        ),
      ),
      body: TabBarView(
        controller: _tabs,
        children: [
          // ── QR scanner tab ───────────────────────────────────────────────────
          Stack(
            children: [
              MobileScanner(
                onDetect: _onQrDetect,
              ),
              if (_loading)
                const Center(
                  child: CircularProgressIndicator(color: AppTheme.primary),
                ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.all(24),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Point camera at the QR code your friend shows you',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
              ),
            ],
          ),

          // ── Manual code tab ──────────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.lock_open_outlined,
                    size: 56, color: AppTheme.primary),
                const SizedBox(height: 16),
                const Text(
                  'Enter the 6-digit code\nyour friend shared with you',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppTheme.textPrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 32),
                TextField(
                  controller: _codeCtrl,
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: AppTheme.primary,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 10),
                  decoration: InputDecoration(
                    counterText: '',
                    filled: true,
                    fillColor: AppTheme.card,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (v) {
                    if (v.length == 6) _lookupToken(v);
                  },
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: _loading
                        ? null
                        : () => _lookupToken(_codeCtrl.text),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    child: _loading
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                                strokeWidth: 2, color: Colors.white))
                        : const Text('Look Up',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600)),
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
