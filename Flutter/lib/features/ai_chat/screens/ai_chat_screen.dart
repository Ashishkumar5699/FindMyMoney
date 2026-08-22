import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_theme.dart';
import '../providers/ai_chat_provider.dart';
import '../services/ai_chat_service.dart';

class AiChatScreen extends ConsumerStatefulWidget {
  const AiChatScreen({super.key});

  @override
  ConsumerState<AiChatScreen> createState() => _AiChatScreenState();
}

class _AiChatScreenState extends ConsumerState<AiChatScreen> {
  final _controller = TextEditingController();
  final _scrollController = ScrollController();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _send() {
    final q = _controller.text.trim();
    if (q.isEmpty) return;
    _controller.clear();
    ref.read(aiChatProvider.notifier).send(q);
    _scrollToBottom();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(aiChatProvider);

    ref.listen(aiChatProvider, (_, next) {
      if (next.messages.isNotEmpty) _scrollToBottom();
    });

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('✨', style: TextStyle(fontSize: 18)),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Finance AI',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                Text('Powered by Ollama · Local & private',
                    style: TextStyle(fontSize: 10, color: AppTheme.textSecondary)),
              ],
            ),
          ],
        ),
        actions: [
          if (state.messages.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.delete_outline),
              tooltip: 'Clear chat',
              onPressed: () => ref.read(aiChatProvider.notifier).clear(),
            ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: state.messages.isEmpty
                ? _EmptyState()
                : ListView.builder(
                    controller: _scrollController,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    itemCount: state.messages.length +
                        (state.toolStatus.isNotEmpty ? 1 : 0),
                    itemBuilder: (context, i) {
                      if (i == state.messages.length) {
                        return _ToolStatusRow(status: state.toolStatus);
                      }
                      return _MessageBubble(msg: state.messages[i]);
                    },
                  ),
          ),
          _InputBar(
            controller: _controller,
            focusNode: _focusNode,
            loading: state.loading,
            onSend: _send,
          ),
        ],
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('✨', style: TextStyle(fontSize: 48)),
            const SizedBox(height: 16),
            const Text(
              'Finance AI',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textPrimary),
            ),
            const SizedBox(height: 8),
            const Text(
              'Ask anything about your finances.\nYour data stays private — processed locally.',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppTheme.textSecondary, fontSize: 13),
            ),
            const SizedBox(height: 28),
            _SuggestionChip('How much did I spend this month?'),
            const SizedBox(height: 8),
            _SuggestionChip('Show my upcoming EMIs and loans'),
            const SizedBox(height: 8),
            _SuggestionChip('What is my net savings this year?'),
          ],
        ),
      ),
    );
  }
}

class _SuggestionChip extends ConsumerWidget {
  final String text;
  const _SuggestionChip(this.text);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => ref.read(aiChatProvider.notifier).send(text),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: AppTheme.card,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: AppTheme.primary.withValues(alpha: 0.4), width: 1),
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: AppTheme.primary, fontSize: 13, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class _MessageBubble extends StatelessWidget {
  final AiChatMessage msg;
  const _MessageBubble({required this.msg});

  @override
  Widget build(BuildContext context) {
    final isUser = msg.role == 'user';

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment:
            isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          // Tool badges
          if (msg.tools.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Wrap(
                spacing: 6,
                runSpacing: 4,
                children: msg.tools
                    .map((t) => _ToolBadge(label: t))
                    .toList(),
              ),
            ),
          // Bubble
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.82,
            ),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              decoration: BoxDecoration(
                color: isUser ? AppTheme.primary : AppTheme.card,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(16),
                  topRight: const Radius.circular(16),
                  bottomLeft: Radius.circular(isUser ? 16 : 4),
                  bottomRight: Radius.circular(isUser ? 4 : 16),
                ),
              ),
              child: msg.content.isEmpty && !isUser
                  ? const _ThinkingDots()
                  : SelectableText(
                      msg.content,
                      style: const TextStyle(
                          color: AppTheme.textPrimary,
                          fontSize: 14,
                          height: 1.5),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ToolBadge extends StatelessWidget {
  final String label;
  const _ToolBadge({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: const Color(0xFF312E81),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        style: const TextStyle(
            color: Color(0xFFA5B4FC), fontSize: 11, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class _ThinkingDots extends StatefulWidget {
  const _ThinkingDots();

  @override
  State<_ThinkingDots> createState() => _ThinkingDotsState();
}

class _ThinkingDotsState extends State<_ThinkingDots>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _anim;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);
    _anim = Tween(begin: 0.3, end: 1.0).animate(_ctrl);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _anim,
      child: const Text('Thinking...',
          style: TextStyle(color: AppTheme.primary, fontSize: 14)),
    );
  }
}

class _ToolStatusRow extends StatelessWidget {
  final String status;
  const _ToolStatusRow({required this.status});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            width: 10,
            height: 10,
            child: CircularProgressIndicator(
              strokeWidth: 1.5,
              valueColor: AlwaysStoppedAnimation(AppTheme.primary),
            ),
          ),
          const SizedBox(width: 8),
          Text(status,
              style: const TextStyle(
                  color: AppTheme.primary, fontSize: 12)),
        ],
      ),
    );
  }
}

class _InputBar extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool loading;
  final VoidCallback onSend;

  const _InputBar({
    required this.controller,
    required this.focusNode,
    required this.loading,
    required this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          12, 10, 12, 10 + MediaQuery.of(context).padding.bottom),
      decoration: const BoxDecoration(
        color: AppTheme.card,
        border: Border(top: BorderSide(color: Color(0xFF3A3A5E), width: 1)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              enabled: !loading,
              maxLines: 4,
              minLines: 1,
              textInputAction: TextInputAction.send,
              onSubmitted: (_) => onSend(),
              style: const TextStyle(color: AppTheme.textPrimary, fontSize: 14),
              decoration: const InputDecoration(
                hintText: 'Ask about your finances...',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              ),
            ),
          ),
          const SizedBox(width: 8),
          ValueListenableBuilder<TextEditingValue>(
            valueListenable: controller,
            builder: (_, val, _) {
              final canSend = val.text.trim().isNotEmpty && !loading;
              return AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: canSend ? AppTheme.primary : const Color(0xFF3A3A5E),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: canSend ? onSend : null,
                  icon: loading
                      ? const SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor:
                                AlwaysStoppedAnimation(Colors.white),
                          ),
                        )
                      : const Icon(Icons.send_rounded,
                          color: Colors.white, size: 20),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
