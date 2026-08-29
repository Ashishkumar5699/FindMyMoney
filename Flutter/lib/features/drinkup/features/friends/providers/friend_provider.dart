import 'package:flutter/foundation.dart';
import '../models/friend_models.dart';
import '../services/friend_service.dart';

class FriendProvider extends ChangeNotifier {
  final _service = FriendService();

  List<FriendModel> _friends  = [];
  List<FriendModel> _pending  = [];
  String?           _error;
  bool              _loading  = false;

  List<FriendModel> get friends => _friends;
  List<FriendModel> get pending => _pending;
  String?           get error   => _error;
  bool              get loading => _loading;

  Future<void> load() async {
    _setLoading(true);
    try {
      final results = await Future.wait([
        _service.getFriends(),
        _service.getPendingRequests(),
      ]);
      _friends = results[0];
      _pending = results[1];
      _error   = null;
    } catch (e) {
      _error = e.toString().replaceAll('Exception: ', '');
      debugPrint('[Friends] load error: $_error');
    } finally {
      _setLoading(false);
    }
  }

  Future<bool> addFriend(String userName) async {
    _setLoading(true);
    try {
      await _service.addFriend(userName);
      _error = null;
      return true;
    } catch (e) {
      _error = e.toString().replaceAll('Exception: ', '');
      debugPrint('[Friends] addFriend error: $_error');
      return false;
    } finally {
      _setLoading(false);
    }
  }

  Future<void> accept(String friendshipId) async {
    try {
      await _service.acceptRequest(friendshipId);
      await load();
    } catch (e) {
      _error = e.toString().replaceAll('Exception: ', '');
      notifyListeners();
    }
  }

  Future<void> decline(String friendshipId) async {
    try {
      await _service.declineRequest(friendshipId);
      _pending.removeWhere((f) => f.friendshipId == friendshipId);
      notifyListeners();
    } catch (e) {
      _error = e.toString().replaceAll('Exception: ', '');
      notifyListeners();
    }
  }

  void clearError() { _error = null; notifyListeners(); }
  void _setLoading(bool v) { _loading = v; notifyListeners(); }
}
