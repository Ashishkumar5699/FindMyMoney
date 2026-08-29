import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import '../../../shared/theme/app_theme.dart';
import '../providers/auth_provider.dart';
import '../services/auth_service.dart';

class OtpLoginScreen extends StatefulWidget {
  const OtpLoginScreen({super.key});

  @override
  State<OtpLoginScreen> createState() => _OtpLoginScreenState();
}

class _OtpLoginScreenState extends State<OtpLoginScreen> {
  final _svc       = AuthService();
  final _phoneCtrl = TextEditingController();
  final _otpCtrl   = TextEditingController();

  bool    _loading  = false;
  bool    _codeSent = false;
  String? _devCode;
  String? _error;
  String  _phone    = '';

  Future<void> _sendOtp() async {
    final phone = _phoneCtrl.text.trim();
    if (phone.length < 10) {
      setState(() => _error = 'Enter a valid phone number');
      return;
    }
    setState(() { _loading = true; _error = null; });
    try {
      final dev = await _svc.sendOtp(phone);
      setState(() { _phone = phone; _codeSent = true; _devCode = dev; });
    } catch (e) {
      setState(() => _error = e.toString().replaceAll('Exception: ', ''));
    } finally {
      setState(() => _loading = false);
    }
  }

  Future<void> _verifyOtp(String code) async {
    if (code.length < 6) return;
    setState(() { _loading = true; _error = null; });
    final provider = context.read<AuthProvider>();
    await provider.loginWithOtp(_phone, code);
    if (!mounted) return;
    if (provider.error != null) {
      setState(() { _error = provider.error; _loading = false; _otpCtrl.clear(); });
      return;
    }
    final state = provider.state;
    if (state == AuthState.mpinSetup) {
      context.go('/set-mpin');
    } else if (state == AuthState.needsMpin) {
      context.go('/unlock');
    } else {
      context.go('/plans');
    }
  }

  @override
  void dispose() {
    _phoneCtrl.dispose();
    _otpCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        backgroundColor: AppTheme.background,
        title: const Text('Login with OTP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              _codeSent ? 'Enter the 6-digit code sent to $_phone' : 'Your phone number',
              style: const TextStyle(color: AppTheme.textSecondary, fontSize: 14),
            ),
            const SizedBox(height: 24),

            if (!_codeSent) ...[
              TextField(
                controller: _phoneCtrl,
                keyboardType: TextInputType.phone,
                style: const TextStyle(color: AppTheme.textPrimary),
                decoration: InputDecoration(
                  hintText: '+91 98765 43210',
                  hintStyle: const TextStyle(color: AppTheme.textSecondary),
                  prefixIcon: const Icon(Icons.phone, color: AppTheme.primary),
                  filled: true,
                  fillColor: AppTheme.surfaceCard,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _loading ? null : _sendOtp,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primary,
                    foregroundColor: Colors.black,
                    minimumSize: const Size.fromHeight(52),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: _loading
                      ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.black))
                      : const Text('Send OTP', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                ),
              ),
            ] else ...[
              PinCodeTextField(
                appContext: context,
                length: 6,
                controller: _otpCtrl,
                keyboardType: TextInputType.number,
                autoFocus: true,
                onChanged: (_) {},
                onCompleted: _verifyOtp,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 52,
                  fieldWidth: 44,
                  activeFillColor: AppTheme.surfaceCard,
                  inactiveFillColor: AppTheme.surfaceCard,
                  selectedFillColor: AppTheme.surfaceCard,
                  activeColor: AppTheme.primary,
                  inactiveColor: AppTheme.surfaceCard,
                  selectedColor: AppTheme.primary,
                ),
                enableActiveFill: true,
                animationType: AnimationType.fade,
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(height: 12),
              if (_devCode != null)
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppTheme.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppTheme.primary.withValues(alpha: 0.4)),
                  ),
                  child: Row(children: [
                    const Icon(Icons.developer_mode, color: AppTheme.primary, size: 16),
                    const SizedBox(width: 8),
                    Text('Dev code: $_devCode',
                        style: const TextStyle(color: AppTheme.primary, fontWeight: FontWeight.w700)),
                  ]),
                ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: _loading ? null : () => setState(() { _codeSent = false; _otpCtrl.clear(); }),
                child: const Text('Change number', style: TextStyle(color: AppTheme.textSecondary)),
              ),
              if (_loading)
                const Center(child: Padding(
                  padding: EdgeInsets.all(12),
                  child: CircularProgressIndicator(color: AppTheme.primary),
                )),
            ],

            if (_error != null) ...[
              const SizedBox(height: 16),
              Text(_error!, style: const TextStyle(color: AppTheme.error, fontSize: 13)),
            ],
          ],
        ),
      ),
    );
  }
}
