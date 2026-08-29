import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import '../../../shared/theme/app_theme.dart';
import '../../../shared/widgets/bb_button.dart';
import '../providers/auth_provider.dart';

class SetMpinScreen extends StatefulWidget {
  const SetMpinScreen({super.key});

  @override
  State<SetMpinScreen> createState() => _SetMpinScreenState();
}

class _SetMpinScreenState extends State<SetMpinScreen> {
  String _mpin    = '';
  String _confirm = '';
  bool   _step2   = false;

  Future<void> _proceed() async {
    if (!_step2) {
      if (_mpin.length < 4) return;
      setState(() => _step2 = true);
      return;
    }
    if (_mpin != _confirm) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('PINs do not match'), backgroundColor: AppTheme.error),
      );
      setState(() { _step2 = false; _confirm = ''; });
      return;
    }
    final auth = context.read<AuthProvider>();
    await auth.setMpin(_mpin);
    if (!mounted) return;
    if (auth.error != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(auth.error!), backgroundColor: AppTheme.error));
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
              const Text('🔐', style: TextStyle(fontSize: 56)),
              const SizedBox(height: 24),
              Text(
                _step2 ? 'Confirm your PIN' : 'Set a PIN',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: AppTheme.textPrimary),
              ),
              const SizedBox(height: 8),
              Text(
                _step2 ? 'Enter the same PIN again' : 'You\'ll use this every time you open BKC',
                style: const TextStyle(color: AppTheme.textSecondary),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              PinCodeTextField(
                key: ValueKey(_step2),
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
                onChanged: (v) => _step2 ? setState(() => _confirm = v) : setState(() => _mpin = v),
                onCompleted: (_) => _proceed(),
              ),
              const SizedBox(height: 32),
              BbButton(label: _step2 ? 'Confirm PIN' : 'Next', onTap: _proceed, loading: auth.loading),
            ],
          ),
        ),
      ),
    );
  }
}
