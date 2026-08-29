import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class BbButton extends StatelessWidget {
  final String   label;
  final VoidCallback? onTap;
  final bool     loading;
  final bool     outline;

  const BbButton({
    super.key,
    required this.label,
    this.onTap,
    this.loading = false,
    this.outline = false,
  });

  @override
  Widget build(BuildContext context) {
    if (outline) {
      return OutlinedButton(
        onPressed: loading ? null : onTap,
        style: OutlinedButton.styleFrom(
          foregroundColor: AppTheme.primary,
          side: const BorderSide(color: AppTheme.primary),
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
        child: loading
            ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
            : Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
      );
    }
    return ElevatedButton(
      onPressed: loading ? null : onTap,
      child: loading
          ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.black))
          : Text(label),
    );
  }
}
