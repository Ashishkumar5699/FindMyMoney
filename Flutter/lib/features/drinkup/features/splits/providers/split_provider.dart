import 'package:flutter/foundation.dart';
import '../models/split_models.dart';
import '../services/split_service.dart';

class SplitProvider extends ChangeNotifier {
  final _service = SplitService();

  List<SplitModel> _splits  = [];
  String?          _error;
  bool             _loading = false;

  List<SplitModel> get splits  => _splits;
  String?          get error   => _error;
  bool             get loading => _loading;

  Future<void> loadUnsettled() async {
    _setLoading(true);
    try {
      _splits = await _service.getUnsettled();
      _error  = null;
    } catch (e) {
      _error = e.toString().replaceAll('Exception: ', '');
      debugPrint('[Splits] load error: $_error');
    } finally {
      _setLoading(false);
    }
  }

  Future<bool> create({
    required String planId,
    required double totalAmount,
    required String description,
    required List<Map<String, dynamic>> participants,
  }) async {
    _setLoading(true);
    try {
      final split = await _service.createSplit(
        planId:       planId,
        totalAmount:  totalAmount,
        description:  description,
        participants: participants,
      );
      _splits.insert(0, split);
      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e.toString().replaceAll('Exception: ', '');
      debugPrint('[Splits] create error: $_error');
      notifyListeners();
      return false;
    } finally {
      _setLoading(false);
    }
  }

  Future<void> settle(String splitId) async {
    try {
      final updated = await _service.settleShare(splitId);
      final idx = _splits.indexWhere((s) => s.splitId == splitId);
      if (idx != -1) { _splits[idx] = updated; }
      // remove from list if fully settled
      _splits.removeWhere((s) => s.splitId == splitId && s.fullySettled);
      notifyListeners();
    } catch (e) {
      _error = e.toString().replaceAll('Exception: ', '');
      notifyListeners();
    }
  }

  void clearError() { _error = null; notifyListeners(); }
  void _setLoading(bool v) { _loading = v; notifyListeners(); }
}
