import 'dart:convert';
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

/// Shows a profile photo (data URI) or falls back to initials.
class DuAvatar extends StatelessWidget {
  final String displayName;
  final String avatarUrl;
  final double radius;

  const DuAvatar({
    super.key,
    required this.displayName,
    this.avatarUrl = '',
    this.radius = 24,
  });

  String get _initials {
    final parts = displayName.trim().split(' ');
    if (parts.length >= 2) return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    return displayName.isNotEmpty ? displayName[0].toUpperCase() : '?';
  }

  @override
  Widget build(BuildContext context) {
    if (avatarUrl.startsWith('data:image')) {
      final base64Str = avatarUrl.split(',').last;
      try {
        final bytes = base64Decode(base64Str);
        return CircleAvatar(
          radius: radius,
          backgroundImage: MemoryImage(bytes),
        );
      } catch (_) {}
    }

    return CircleAvatar(
      radius: radius,
      backgroundColor: AppTheme.primary,
      child: Text(
        _initials,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: radius * 0.65,
        ),
      ),
    );
  }
}
