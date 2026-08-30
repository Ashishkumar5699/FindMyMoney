import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../shared/theme/app_theme.dart';
import '../../../shared/widgets/bb_button.dart';
import '../../../shared/widgets/bb_text_field.dart';
import '../providers/auth_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _form     = GlobalKey<FormState>();
  final _userName = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    _userName.dispose();
    _password.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    if (!_form.currentState!.validate()) return;
    final auth = context.read<AuthProvider>();
    await auth.login(userName: _userName.text.trim(), password: _password.text);
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _form,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                const Text('🍻', style: TextStyle(fontSize: 56)),
                const SizedBox(height: 16),
                const Text('BKC', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800, color: AppTheme.primary)),
                const Text('Ready to head out?', style: TextStyle(fontSize: 16, color: AppTheme.textSecondary)),
                const SizedBox(height: 48),
                BbTextField(
                  label: 'Username',
                  controller: _userName,
                  validator: (v) => v!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                BbTextField(
                  label: 'Password',
                  controller: _password,
                  obscure: true,
                  validator: (v) => v!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: 32),
                BbButton(label: 'Login', onTap: _login, loading: auth.loading),
                const SizedBox(height: 16),
                BbButton(
                  label: 'Create Account',
                  outline: true,
                  onTap: () => context.push('/register'),
                ),
                const SizedBox(height: 8),
                BbButton(
                  label: 'Login with OTP',
                  outline: true,
                  onTap: () => context.push('/otp-login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
