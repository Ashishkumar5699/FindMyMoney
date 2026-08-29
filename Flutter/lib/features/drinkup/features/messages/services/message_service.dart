import '../../../core/api/api_client.dart';
import '../../../core/api/api_endpoints.dart';
import '../models/message_models.dart';

class MessageService {
  final _api = ApiClient();

  Future<List<ConversationSummary>> getConversations() async {
    final list = await _api.getList(ApiEndpoints.conversations);
    return list.map(ConversationSummary.fromJson).toList();
  }

  Future<List<DuMessage>> getConversation(String friendAccountId) async {
    final list = await _api.getList(ApiEndpoints.conversation(friendAccountId));
    return list.map(DuMessage.fromJson).toList();
  }

  Future<DuMessage> sendMessage(String receiverAccountId, String text) async {
    final data = await _api.post(
      ApiEndpoints.conversation(receiverAccountId),
      {'text': text},
    );
    return DuMessage.fromJson(data);
  }

  Future<void> markRead(String friendAccountId) async {
    await _api.put(ApiEndpoints.markRead(friendAccountId), {});
  }

  Future<void> ping(String friendId) async {
    await _api.post(ApiEndpoints.ping(friendId), {});
  }
}
