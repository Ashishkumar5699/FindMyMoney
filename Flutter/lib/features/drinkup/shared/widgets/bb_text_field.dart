import 'package:flutter/material.dart';

class BbTextField extends StatelessWidget {
  final String        label;
  final String?       hint;
  final bool          obscure;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final int maxLines;

  const BbTextField({
    super.key,
    required this.label,
    this.hint,
    this.obscure = false,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:   controller,
      obscureText:  obscure,
      keyboardType: keyboardType,
      validator:    validator,
      maxLines:     obscure ? 1 : maxLines,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        hintText:  hint,
      ),
    );
  }
}
