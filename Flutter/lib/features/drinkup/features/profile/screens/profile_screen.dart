import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../../../features/auth/providers/auth_provider.dart';
import '../../../shared/theme/app_theme.dart';
import '../../../shared/widgets/du_avatar.dart';
import '../providers/profile_provider.dart';
import 'edit_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileProvider>().load();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ProfileProvider>();
    final profile  = provider.profile;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          if (profile != null)
            IconButton(
              icon: const Icon(Icons.edit_outlined),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => EditProfileScreen(profile: profile)),
              ).then((_) => provider.load()),
            ),
        ],
      ),
      body: provider.loading && profile == null
          ? const Center(child: CircularProgressIndicator(color: AppTheme.primary))
          : profile == null
              ? _ErrorView(onRetry: provider.load)
              : RefreshIndicator(
                  color: AppTheme.primary,
                  onRefresh: provider.load,
                  child: ListView(
                    padding: const EdgeInsets.all(24),
                    children: [
                      _AvatarSection(
                        displayName: profile.displayName,
                        userName:    profile.userName,
                        avatarUrl:   profile.avatarUrl,
                        onPickPhoto: () async {
                          final picker = ImagePicker();
                          final picked = await picker.pickImage(source: ImageSource.gallery, imageQuality: 85);
                          if (picked == null || !context.mounted) return;
                          await context.read<ProfileProvider>().uploadPhoto(File(picked.path));
                        },
                      ),
                      const SizedBox(height: 32),
                      _SectionCard(title: 'ABOUT', children: [
                        _InfoRow(label: 'Phone', value: profile.phone.isEmpty ? '—' : profile.phone),
                        if (profile.bio.isNotEmpty)
                          _InfoRow(label: 'Bio', value: profile.bio),
                        _InfoRow(label: 'Vibe', value: profile.preferredVibe.isEmpty ? '—' : profile.preferredVibe),
                      ]),
                      const SizedBox(height: 16),
                      _SectionCard(title: 'DRINKING PROFILE', children: [
                        _InfoRow(label: 'Drinks',    value: profile.favoriteDrinks.isEmpty ? '—' : profile.favoriteDrinks),
                        _InfoRow(label: 'Level',     value: profile.drinkingLevel.isEmpty  ? '—' : profile.drinkingLevel),
                        _InfoRow(label: 'How often', value: profile.frequency.isEmpty      ? '—' : profile.frequency),
                      ]),
                      const SizedBox(height: 32),
                      TextButton.icon(
                        onPressed: () => context.read<AuthProvider>().logout(),
                        icon: const Icon(Icons.logout, color: AppTheme.error),
                        label: const Text('Sign out', style: TextStyle(color: AppTheme.error)),
                      ),
                    ],
                  ),
                ),
    );
  }
}

class _AvatarSection extends StatelessWidget {
  final String displayName;
  final String userName;
  final String avatarUrl;
  final VoidCallback onPickPhoto;
  const _AvatarSection({
    required this.displayName,
    required this.userName,
    required this.avatarUrl,
    required this.onPickPhoto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        alignment: Alignment.bottomRight,
        children: [
          DuAvatar(displayName: displayName, avatarUrl: avatarUrl, radius: 48),
          GestureDetector(
            onTap: onPickPhoto,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: AppTheme.primary,
                shape: BoxShape.circle,
                border: Border.all(color: AppTheme.background, width: 2),
              ),
              child: const Icon(Icons.camera_alt, size: 16, color: Colors.black),
            ),
          ),
        ],
      ),
      const SizedBox(height: 16),
      Text(displayName, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: AppTheme.textPrimary)),
      const SizedBox(height: 4),
      Text('@$userName', style: const TextStyle(color: AppTheme.textSecondary)),
    ]);
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const _SectionCard({required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppTheme.surfaceCard, borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppTheme.primary, letterSpacing: 1)),
        const SizedBox(height: 12),
        ...children,
      ]),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(children: [
        SizedBox(width: 90, child: Text(label, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 13))),
        Expanded(child: Text(value, style: const TextStyle(color: AppTheme.textPrimary))),
      ]),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final VoidCallback onRetry;
  const _ErrorView({required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
      const Text('Could not load profile', style: TextStyle(color: AppTheme.textSecondary)),
      const SizedBox(height: 16),
      TextButton(onPressed: onRetry, child: const Text('Retry')),
    ]));
  }
}
