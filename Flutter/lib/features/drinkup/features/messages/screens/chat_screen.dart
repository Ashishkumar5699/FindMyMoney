import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/storage/secure_storage.dart';
import '../../../shared/theme/app_theme.dart';
import '../providers/message_provider.dart';

class ChatScreen extends StatefulWidget {
  final String friendAccountId;
  final String friendName;

  const ChatScreen({
    super.key,
    required this.friendAccountId,
    required this.friendName,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _controller  = TextEditingController();
  final _scrollCtrl  = ScrollController();
  String? _myAccountId;

  @override
  void initState() {
    super.initState();
    _loadThread();
  }

  Future<void> _loadThread() async {
    _myAccountId = await SecureStorage().getAccountId();
    if (!mounted) return;
    await context.read<MessageProvider>().loadThread(widget.friendAccountId);
    _scrollToBottom();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollCtrl.hasClients) {
        _scrollCtrl.animateTo(
          _scrollCtrl.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> _send() async {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    _controller.clear();
    await context.read<MessageProvider>().sendMessage(widget.friendAccountId, text);
    _scrollToBottom();
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final messages = context.watch<MessageProvider>().thread(widget.friendAccountId);

    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        backgroundColor: AppTheme.background,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppTheme.textPrimary),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: AppTheme.primary.withValues(alpha: 0.15),
            child: Text(
              widget.friendName.isNotEmpty ? widget.friendName[0].toUpperCase() : '?',
              style: const TextStyle(color: AppTheme.primary, fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          const SizedBox(width: 10),
          Text(widget.friendName, style: const TextStyle(color: AppTheme.textPrimary, fontSize: 16)),
        ]),
      ),
      body: Column(children: [
        // Message list
        Expanded(
          child: messages.isEmpty
              ? const Center(
                  child: Text('Say hi! 🍻',
                      style: TextStyle(color: AppTheme.textSecondary, fontSize: 16)),
                )
              : ListView.builder(
                  controller: _scrollCtrl,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  itemCount: messages.length,
                  itemBuilder: (context, i) {
                    final msg   = messages[i];
                    final isMe  = msg.senderId == _myAccountId;
                    final showDate = i == 0 ||
                        messages[i].sentAt.day != messages[i - 1].sentAt.day;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (showDate)
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: Text(
                                _formatDate(msg.sentAt),
                                style: const TextStyle(color: AppTheme.textSecondary, fontSize: 11),
                              ),
                            ),
                          ),
                        _Bubble(
                          text:  msg.text,
                          time:  _formatTime(msg.sentAt),
                          isMe:  isMe,
                          isRead: msg.isRead,
                        ),
                      ],
                    );
                  },
                ),
        ),

        // Input bar
        Container(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 16),
          color: AppTheme.surfaceCard,
          child: SafeArea(
            top: false,
            child: Row(children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  style: const TextStyle(color: AppTheme.textPrimary),
                  decoration: InputDecoration(
                    hintText: 'Message…',
                    hintStyle: const TextStyle(color: AppTheme.textSecondary),
                    filled: true,
                    fillColor: AppTheme.background,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  textInputAction: TextInputAction.send,
                  onSubmitted: (_) => _send(),
                  maxLines: null,
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: _send,
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: const BoxDecoration(
                    color: AppTheme.primary,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.send_rounded, color: Colors.black, size: 20),
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }

  String _formatTime(DateTime t) =>
      '${t.hour.toString().padLeft(2, '0')}:${t.minute.toString().padLeft(2, '0')}';

  String _formatDate(DateTime t) {
    final now = DateTime.now();
    if (t.year == now.year && t.month == now.month && t.day == now.day) return 'Today';
    final yesterday = now.subtract(const Duration(days: 1));
    if (t.year == yesterday.year && t.month == yesterday.month && t.day == yesterday.day) return 'Yesterday';
    return '${t.day}/${t.month}/${t.year}';
  }
}

class _Bubble extends StatelessWidget {
  final String text;
  final String time;
  final bool   isMe;
  final bool   isRead;

  const _Bubble({
    required this.text,
    required this.time,
    required this.isMe,
    required this.isRead,
  });

  @override
  Widget build(BuildContext context) => Align(
    alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.72),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: isMe ? AppTheme.primary : AppTheme.surfaceCard,
        borderRadius: BorderRadius.only(
          topLeft:     const Radius.circular(18),
          topRight:    const Radius.circular(18),
          bottomLeft:  Radius.circular(isMe ? 18 : 4),
          bottomRight: Radius.circular(isMe ? 4  : 18),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Text(text,
            style: TextStyle(
                color: isMe ? Colors.black : AppTheme.textPrimary,
                fontSize: 14,
                height: 1.4)),
        const SizedBox(height: 4),
        Row(mainAxisSize: MainAxisSize.min, children: [
          Text(time,
              style: TextStyle(
                  color: isMe ? Colors.black54 : AppTheme.textSecondary,
                  fontSize: 10)),
          if (isMe) ...[
            const SizedBox(width: 4),
            Icon(
              isRead ? Icons.done_all : Icons.done,
              size: 12,
              color: isRead ? Colors.black87 : Colors.black45,
            ),
          ],
        ]),
      ]),
    ),
  );
}
