import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../shared/theme/app_theme.dart';
import '../providers/message_provider.dart';
import 'chat_screen.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MessageProvider>().loadConversations();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<MessageProvider>();

    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        backgroundColor: AppTheme.background,
        title: const Text('Messages', style: TextStyle(color: AppTheme.textPrimary)),
      ),
      body: provider.loading
          ? const Center(child: CircularProgressIndicator(color: AppTheme.primary))
          : provider.conversations.isEmpty
              ? const _EmptyState()
              : ListView.builder(
                  itemCount: provider.conversations.length,
                  itemBuilder: (context, i) {
                    final c = provider.conversations[i];
                    return _ConversationTile(
                      name:        c.friendDisplayName.isNotEmpty ? c.friendDisplayName : c.friendName,
                      lastMessage: c.lastMessage,
                      time:        _formatTime(c.lastMessageAt),
                      unread:      c.unreadCount,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatScreen(
                            friendAccountId:  c.friendAccountId,
                            friendName: c.friendDisplayName.isNotEmpty
                                ? c.friendDisplayName
                                : c.friendName,
                          ),
                        ),
                      ).then((_) => provider.loadConversations()),
                    );
                  },
                ),
    );
  }

  String _formatTime(DateTime t) {
    final now = DateTime.now();
    final diff = now.difference(t);
    if (diff.inMinutes < 1)  return 'now';
    if (diff.inHours   < 1)  return '${diff.inMinutes}m';
    if (diff.inDays    < 1)  return '${diff.inHours}h';
    if (diff.inDays    < 7)  return '${diff.inDays}d';
    return '${t.day}/${t.month}';
  }
}

class _ConversationTile extends StatelessWidget {
  final String   name;
  final String   lastMessage;
  final String   time;
  final int      unread;
  final VoidCallback onTap;

  const _ConversationTile({
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.unread,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(children: [
        // Avatar
        CircleAvatar(
          radius: 24,
          backgroundColor: AppTheme.primary.withValues(alpha: 0.15),
          child: Text(
            name.isNotEmpty ? name[0].toUpperCase() : '?',
            style: const TextStyle(color: AppTheme.primary, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(name,
                style: TextStyle(
                    color: AppTheme.textPrimary,
                    fontWeight: unread > 0 ? FontWeight.w700 : FontWeight.normal,
                    fontSize: 15)),
            const SizedBox(height: 3),
            Text(lastMessage,
                style: TextStyle(
                    color: unread > 0 ? AppTheme.textPrimary : AppTheme.textSecondary,
                    fontSize: 13),
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
          ]),
        ),
        const SizedBox(width: 8),
        Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text(time, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 11)),
          if (unread > 0) ...[
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
              decoration: BoxDecoration(
                color: AppTheme.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('$unread',
                  style: const TextStyle(color: Colors.black, fontSize: 11, fontWeight: FontWeight.bold)),
            ),
          ],
        ]),
      ]),
    ),
  );
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) => const Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('💬', style: TextStyle(fontSize: 56)),
      SizedBox(height: 16),
      Text('No messages yet', style: TextStyle(color: AppTheme.textPrimary, fontSize: 18, fontWeight: FontWeight.w600)),
      SizedBox(height: 8),
      Text('Start a conversation from a friend\'s profile',
          style: TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
    ]),
  );
}
