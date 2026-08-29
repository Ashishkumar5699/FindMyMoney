import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import '../../../shared/theme/app_theme.dart';
import '../providers/auth_provider.dart';

class MpinUnlockScreen extends StatefulWidget {
  const MpinUnlockScreen({super.key});

  @override
  State<MpinUnlockScreen> createState() => _MpinUnlockScreenState();
}

class _MpinUnlockScreenState extends State<MpinUnlockScreen> {
  bool _biometricAvailable = false;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    final auth = context.read<AuthProvider>();
    final available = await auth.isBiometricAvailable();
    setState(() => _biometricAvailable = available);
    if (available) _tryBiometric();
  }

  Future<void> _tryBiometric() async {
    final auth = context.read<AuthProvider>();
    await auth.unlockWithBiometrics();
    if (!mounted) return;
    if (auth.error != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(auth.error!), backgroundColor: AppTheme.error),
      );
      auth.clearError();
    }
  }

  Future<void> _verifyMpin(String mpin) async {
    if (mpin.length < 4) return;
    final auth = context.read<AuthProvider>();
    await auth.verifyMpin(mpin);
    if (!mounted) return;
    if (auth.error != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Wrong PIN'), backgroundColor: AppTheme.error),
      );
      auth.clearError();
    }
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('🍻', style: TextStyle(fontSize: 56)),
              const SizedBox(height: 16),
              const Text('BKC', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800, color: AppTheme.primary)),
              const SizedBox(height: 8),
              const Text('Enter your PIN to unlock', style: TextStyle(color: AppTheme.textSecondary)),
              const SizedBox(height: 48),
              PinCodeTextField(
                appContext: context,
                length: 4,
                obscureText: true,
                keyboardType: TextInputType.number,
                animationType: AnimationType.scale,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(12),
                  fieldHeight: 60,
                  fieldWidth: 60,
                  activeFillColor: AppTheme.surfaceCard,
                  inactiveFillColor: AppTheme.surfaceCard,
                  selectedFillColor: AppTheme.surfaceCard,
                  activeColor: AppTheme.primary,
                  inactiveColor: AppTheme.surfaceCard,
                  selectedColor: AppTheme.primary,
                ),
                enableActiveFill: true,
                onChanged: (_) {},
                onCompleted: _verifyMpin,
              ),
              const SizedBox(height: 24),
              if (_biometricAvailable)
                TextButton.icon(
                  onPressed: auth.loading ? null : _tryBiometric,
                  icon: const Icon(Icons.fingerprint, color: AppTheme.primary, size: 28),
                  label: const Text('Use Biometrics', style: TextStyle(color: AppTheme.primary)),
                ),
              const SizedBox(height: 32),
              TextButton(
                onPressed: () => context.read<AuthProvider>().logout(),
                child: const Text('Sign out', style: TextStyle(color: AppTheme.textSecondary)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
