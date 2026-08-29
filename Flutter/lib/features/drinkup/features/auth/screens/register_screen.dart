import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../shared/theme/app_theme.dart';
import '../../../shared/widgets/bb_button.dart';
import '../../../shared/widgets/bb_text_field.dart';
import '../providers/auth_provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _form        = GlobalKey<FormState>();
  final _userName    = TextEditingController();
  final _displayName = TextEditingController();
  final _email       = TextEditingController();
  final _phone       = TextEditingController();
  final _password    = TextEditingController();

  @override
  void dispose() {
    _userName.dispose(); _displayName.dispose(); _email.dispose();
    _phone.dispose(); _password.dispose();
    super.dispose();
  }

  Future<void> _register() async {
    if (!_form.currentState!.validate()) return;
    final auth = context.read<AuthProvider>();
    await auth.register(
      userName:    _userName.text.trim(),
      displayName: _displayName.text.trim(),
      email:       _email.text.trim(),
      phone:       _phone.text.trim(),
      password:    _password.text,
    );
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
      appBar: AppBar(title: const Text('Create Account')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _form,
            child: Column(
              children: [
                BbTextField(label: 'Username', controller: _userName, validator: (v) => v!.isEmpty ? 'Required' : null),
                const SizedBox(height: 14),
                BbTextField(label: 'Display Name', controller: _displayName, validator: (v) => v!.isEmpty ? 'Required' : null),
                const SizedBox(height: 14),
                BbTextField(label: 'Email', controller: _email, keyboardType: TextInputType.emailAddress),
                const SizedBox(height: 14),
                BbTextField(
                  label: 'Phone',
                  controller: _phone,
                  keyboardType: TextInputType.phone,
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) return 'Phone number is required';
                    if (v.trim().length < 10) return 'Enter a valid phone number';
                    return null;
                  },
                ),
                const SizedBox(height: 14),
                BbTextField(label: 'Password', controller: _password, obscure: true, validator: (v) => v!.length < 6 ? 'Min 6 characters' : null),
                const SizedBox(height: 32),
                BbButton(label: 'Create Account', onTap: _register, loading: auth.loading),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => context.pop(),
                  child: const Text('Already have an account? Login', style: TextStyle(color: AppTheme.primary)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
