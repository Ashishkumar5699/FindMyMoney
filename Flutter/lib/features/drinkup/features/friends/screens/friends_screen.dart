import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../shared/theme/app_theme.dart';
import '../models/friend_models.dart';
import '../providers/friend_provider.dart';
import 'friend_detail_screen.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> with SingleTickerProviderStateMixin {
  late final TabController _tabs = TabController(length: 2, vsync: this);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<FriendProvider>().load();
    });
  }

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  void _showAddFriendDialog() {
    final ctrl = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppTheme.surfaceCard,
        title: const Text('Add Friend', style: TextStyle(color: AppTheme.textPrimary)),
        content: TextField(
          controller: ctrl,
          autofocus: true,
          style: const TextStyle(color: AppTheme.textPrimary),
          decoration: const InputDecoration(
            hintText: 'Enter username',
            hintStyle: TextStyle(color: AppTheme.textSecondary),
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
          TextButton(
            onPressed: () async {
              Navigator.pop(ctx);
              final provider = context.read<FriendProvider>();
              final ok = await provider.addFriend(ctrl.text.trim());
              if (!mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(ok ? 'Friend request sent!' : (provider.error ?? 'Failed')),
                backgroundColor: ok ? AppTheme.primary : AppTheme.error,
              ));
              if (ok) provider.clearError();
            },
            child: const Text('Send', style: TextStyle(color: AppTheme.primary)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<FriendProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Friends'),
        bottom: TabBar(
          controller: _tabs,
          indicatorColor: AppTheme.primary,
          labelColor: AppTheme.primary,
          unselectedLabelColor: AppTheme.textSecondary,
          tabs: [
            const Tab(text: 'Friends'),
            Tab(text: provider.pending.isEmpty ? 'Requests' : 'Requests (${provider.pending.length})'),
          ],
        ),
      ),
      body: provider.loading && provider.friends.isEmpty && provider.pending.isEmpty
          ? const Center(child: CircularProgressIndicator(color: AppTheme.primary))
          : RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: provider.load,
              child: TabBarView(
                controller: _tabs,
                children: [
                  _FriendsList(friends: provider.friends),
                  _PendingList(pending: provider.pending, provider: provider),
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddFriendDialog,
        backgroundColor: AppTheme.primary,
        foregroundColor: Colors.black,
        child: const Icon(Icons.person_add),
      ),
    );
  }
}

class _FriendsList extends StatelessWidget {
  final List<FriendModel> friends;
  const _FriendsList({required this.friends});

  @override
  Widget build(BuildContext context) {
    if (friends.isEmpty) {
      return const Center(child: Text('No friends yet — add one!', style: TextStyle(color: AppTheme.textSecondary)));
    }
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: friends.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (_, i) => _FriendTile(friend: friends[i]),
    );
  }
}

class _PendingList extends StatelessWidget {
  final List<FriendModel> pending;
  final FriendProvider provider;
  const _PendingList({required this.pending, required this.provider});

  @override
  Widget build(BuildContext context) {
    if (pending.isEmpty) {
      return const Center(child: Text('No pending requests', style: TextStyle(color: AppTheme.textSecondary)));
    }
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: pending.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (_, i) {
        final f = pending[i];
        return _FriendTile(
          friend: f,
          trailing: Row(mainAxisSize: MainAxisSize.min, children: [
            IconButton(
              icon: const Icon(Icons.check_circle, color: AppTheme.primary),
              onPressed: () => provider.accept(f.friendshipId),
            ),
            IconButton(
              icon: const Icon(Icons.cancel, color: AppTheme.error),
              onPressed: () => provider.decline(f.friendshipId),
            ),
          ]),
        );
      },
    );
  }
}

class _FriendTile extends StatelessWidget {
  final FriendModel friend;
  final Widget? trailing;
  const _FriendTile({required this.friend, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppTheme.surfaceCard, borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        onTap: trailing == null
            ? () => Navigator.push(context, MaterialPageRoute(
                builder: (_) => FriendDetailScreen(friend: friend)))
            : null,
        leading: CircleAvatar(
          backgroundColor: AppTheme.primary,
          child: Text(friend.initials, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        title: Text(friend.displayName, style: const TextStyle(color: AppTheme.textPrimary, fontWeight: FontWeight.w600)),
        subtitle: Text('@${friend.userName}', style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
        trailing: trailing,
      ),
    );
  }
}
