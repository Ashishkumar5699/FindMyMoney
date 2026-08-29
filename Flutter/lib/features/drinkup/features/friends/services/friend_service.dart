import '../../../core/api/api_client.dart';
import '../../../core/api/api_endpoints.dart';
import '../models/friend_models.dart';

class FriendService {
  final _api = ApiClient();

  Future<List<FriendModel>> getFriends() async {
    final data = await _api.getList(ApiEndpoints.friends);
    return data.map((e) => FriendModel.fromJson(e)).toList();
  }

  Future<List<FriendModel>> getPendingRequests() async {
    final data = await _api.getList(ApiEndpoints.pendingFriends);
    return data.map((e) => FriendModel.fromJson(e)).toList();
  }

  Future<FriendModel> addFriend(String userName) async {
    final data = await _api.post(ApiEndpoints.addFriend, {'userName': userName});
    return FriendModel.fromJson(data);
  }

  Future<void> acceptRequest(String friendshipId) async {
    await _api.put(ApiEndpoints.acceptFriend(friendshipId), {});
  }

  Future<void> declineRequest(String friendshipId) async {
    await _api.put(ApiEndpoints.declineFriend(friendshipId), {});
  }
}
