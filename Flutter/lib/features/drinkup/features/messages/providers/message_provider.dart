import 'package:flutter/foundation.dart';
import '../models/message_models.dart';
import '../services/message_service.dart';

class MessageProvider extends ChangeNotifier {
  final _service = MessageService();

  List<ConversationSummary> conversations = [];
  final Map<String, List<DuMessage>> _threads = {};
  bool loading = false;
  String? error;

  List<DuMessage> thread(String friendId) => _threads[friendId] ?? [];

  int get totalUnread =>
      conversations.fold(0, (sum, c) => sum + c.unreadCount);

  Future<void> loadConversations() async {
    loading = true;
    notifyListeners();
    try {
      conversations = await _service.getConversations();
      error = null;
    } catch (e) {
      error = e.toString();
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> loadThread(String friendId) async {
    try {
      _threads[friendId] = await _service.getConversation(friendId);
      await _service.markRead(friendId);
      // Refresh unread counts
      final idx = conversations.indexWhere((c) => c.friendAccountId == friendId);
      if (idx != -1) {
        final c = conversations[idx];
        conversations[idx] = ConversationSummary(
          friendAccountId:  c.friendAccountId,
          friendName:       c.friendName,
          friendDisplayName: c.friendDisplayName,
          lastMessage:      c.lastMessage,
          lastMessageAt:    c.lastMessageAt,
          unreadCount:      0,
        );
      }
      notifyListeners();
    } catch (e) {
      debugPrint('[Messages] loadThread error: $e');
    }
  }

  Future<void> sendMessage(String friendId, String text) async {
    try {
      final msg = await _service.sendMessage(friendId, text);
      _threads[friendId] = [...(_threads[friendId] ?? []), msg];
      // Update conversation summary
      final idx = conversations.indexWhere((c) => c.friendAccountId == friendId);
      if (idx != -1) {
        final c = conversations[idx];
        conversations[idx] = ConversationSummary(
          friendAccountId:  c.friendAccountId,
          friendName:       c.friendName,
          friendDisplayName: c.friendDisplayName,
          lastMessage:      text,
          lastMessageAt:    msg.sentAt,
          unreadCount:      0,
        );
      }
      notifyListeners();
    } catch (e) {
      debugPrint('[Messages] sendMessage error: $e');
    }
  }
}
