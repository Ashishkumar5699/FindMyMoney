import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../features/map/providers/location_provider.dart';
import '../../../features/messages/screens/chat_screen.dart';
import '../../../features/messages/services/message_service.dart';
import '../../../features/profile/models/profile_models.dart';
import '../../../features/profile/services/profile_service.dart';
import '../../../shared/theme/app_theme.dart';
import '../../../shared/widgets/du_avatar.dart';
import '../models/friend_models.dart';

class FriendDetailScreen extends StatefulWidget {
  final FriendModel friend;
  const FriendDetailScreen({super.key, required this.friend});

  @override
  State<FriendDetailScreen> createState() => _FriendDetailScreenState();
}

class _FriendDetailScreenState extends State<FriendDetailScreen> {
  final _service     = ProfileService();
  final _msgService  = MessageService();
  DrinkProfileModel? _profile;
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final p = await _service.getProfileById(widget.friend.accountId);
      if (mounted) setState(() { _profile = p; _loading = false; });
    } catch (e) {
      if (mounted) setState(() { _error = e.toString().replaceAll('Exception: ', ''); _loading = false; });
    }
  }

  bool get _hasLocation => context
      .read<LocationProvider>()
      .friendLocations
      .any((f) => f.accountId == widget.friend.accountId);

  void _viewOnMap() {
    context.read<LocationProvider>().setFocus(widget.friend.accountId);
    context.go('/map');
  }

  Future<void> _call(String phone) async {
    if (phone.isEmpty) return;
    final uri = Uri(scheme: 'tel', path: phone);
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }

  Future<void> _ping() async {
    try {
      await _msgService.ping(widget.friend.accountId);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Ping sent! 👀'), duration: Duration(seconds: 2)),
      );
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    final f = widget.friend;
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            backgroundColor: AppTheme.background,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF1A1A2E), AppTheme.background],
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 48),
                      DuAvatar(
                        displayName: f.displayName,
                        avatarUrl:   _profile?.avatarUrl ?? '',
                        radius:      44,
                      ),
                      const SizedBox(height: 12),
                      Text(f.displayName,
                          style: const TextStyle(
                              color: AppTheme.textPrimary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text('@${f.userName}',
                          style: const TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: _loading
                ? const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Center(child: CircularProgressIndicator(color: AppTheme.primary)),
                  )
                : _error != null
                    ? Padding(
                        padding: const EdgeInsets.all(24),
                        child: Text(_error!, style: const TextStyle(color: AppTheme.error)),
                      )
                    : _ProfileBody(
                        profile:   _profile!,
                        onCall:    _call,
                        onViewMap: _hasLocation ? _viewOnMap : null,
                        onPing:    _ping,
                        onMessage: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ChatScreen(
                              friendAccountId: widget.friend.accountId,
                              friendName:      widget.friend.displayName,
                            ),
                          ),
                        ),
                      ),
          ),
        ],
      ),
    );
  }
}

class _ProfileBody extends StatelessWidget {
  final DrinkProfileModel profile;
  final void Function(String) onCall;
  final VoidCallback? onViewMap;
  final VoidCallback? onMessage;
  final VoidCallback? onPing;
  const _ProfileBody({required this.profile, required this.onCall, this.onViewMap, this.onMessage, this.onPing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

        // Action buttons
        Row(
          children: [
            Expanded(
              child: _ActionBtn(
                icon: Icons.chat_bubble_outline,
                label: 'Message',
                color: AppTheme.primary,
                onTap: onMessage ?? () {},
              ),
            ),
            if (profile.phone.isNotEmpty) ...[
              const SizedBox(width: 12),
              Expanded(
                child: _ActionBtn(
                  icon: Icons.call,
                  label: 'Call',
                  color: Colors.green,
                  onTap: () => onCall(profile.phone),
                ),
              ),
            ],
            if (onViewMap != null) ...[
              const SizedBox(width: 12),
              Expanded(
                child: _ActionBtn(
                  icon: Icons.map,
                  label: 'Map',
                  color: Colors.blue,
                  onTap: onViewMap!,
                ),
              ),
            ],
            if (onPing != null) ...[
              const SizedBox(width: 12),
              Expanded(
                child: _ActionBtn(
                  icon: Icons.notifications_active_outlined,
                  label: 'Ping',
                  color: Colors.orange,
                  onTap: onPing!,
                ),
              ),
            ],
          ],
        ),

        if (profile.bio.isNotEmpty) ...[
          const SizedBox(height: 20),
          _Section(
            title: 'About',
            child: Text(profile.bio, style: const TextStyle(color: AppTheme.textPrimary, height: 1.5)),
          ),
        ],

        if (profile.drinksList.isNotEmpty) ...[
          const SizedBox(height: 20),
          _Section(
            title: 'Favorite drinks',
            child: Wrap(
              spacing: 8,
              runSpacing: 6,
              children: profile.drinksList.map((d) => Chip(
                label: Text(d, style: const TextStyle(color: AppTheme.textPrimary, fontSize: 13)),
                backgroundColor: AppTheme.surfaceCard,
                side: const BorderSide(color: AppTheme.primary, width: 1),
              )).toList(),
            ),
          ),
        ],

        if (profile.preferredVibe.isNotEmpty) ...[
          const SizedBox(height: 20),
          _Section(
            title: 'Preferred vibe',
            child: _InfoChip(label: profile.preferredVibe, icon: Icons.nightlife),
          ),
        ],

        if (profile.drinkingLevel.isNotEmpty || profile.frequency.isNotEmpty) ...[
          const SizedBox(height: 20),
          _Section(
            title: 'Drinking style',
            child: Row(children: [
              if (profile.drinkingLevel.isNotEmpty)
                _InfoChip(label: profile.drinkingLevel, icon: Icons.local_bar),
              if (profile.drinkingLevel.isNotEmpty && profile.frequency.isNotEmpty)
                const SizedBox(width: 8),
              if (profile.frequency.isNotEmpty)
                _InfoChip(label: profile.frequency, icon: Icons.calendar_today),
            ]),
          ),
        ],

        const SizedBox(height: 32),
      ]),
    );
  }
}

class _Section extends StatelessWidget {
  final String title;
  final Widget child;
  const _Section({required this.title, required this.child});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title.toUpperCase(),
          style: const TextStyle(
              color: AppTheme.primary, fontSize: 11,
              fontWeight: FontWeight.w700, letterSpacing: 1.2)),
      const SizedBox(height: 10),
      child,
    ],
  );
}

class _InfoChip extends StatelessWidget {
  final String label;
  final IconData icon;
  const _InfoChip({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    decoration: BoxDecoration(
      color: AppTheme.surfaceCard,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: AppTheme.primary.withValues(alpha: 0.4)),
    ),
    child: Row(mainAxisSize: MainAxisSize.min, children: [
      Icon(icon, size: 14, color: AppTheme.primary),
      const SizedBox(width: 6),
      Text(label, style: const TextStyle(color: AppTheme.textPrimary, fontSize: 13)),
    ]),
  );
}

class _ActionBtn extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;
  const _ActionBtn({required this.icon, required this.label, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.4)),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(icon, color: color, size: 20),
        const SizedBox(width: 8),
        Text(label, style: TextStyle(color: color, fontWeight: FontWeight.w600, fontSize: 15)),
      ]),
    ),
  );
}
