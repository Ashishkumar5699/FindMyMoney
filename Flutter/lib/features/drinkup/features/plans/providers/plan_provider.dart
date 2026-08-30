import 'package:flutter/foundation.dart';
import '../models/plan_models.dart';
import '../services/plan_service.dart';
import '../../../core/notifications/notification_service.dart';

class PlanProvider extends ChangeNotifier {
  final _service = PlanService();

  List<PlanModel> _plans   = [];
  String?         _error;
  bool            _loading = false;

  List<PlanModel> get plans   => _plans;
  String?         get error   => _error;
  bool            get loading => _loading;

  Future<void> load() async {
    _setLoading(true);
    try {
      _plans = await _service.getMyPlans();
      _error = null;
      _schedulePlanReminders(_plans);
    } catch (e) {
      _error = e.toString().replaceAll('Exception: ', '');
      debugPrint('[Plans] load error: $_error');
    } finally {
      _setLoading(false);
    }
  }

  Future<bool> create({
    required String title,
    required String venueName,
    required String address,
    required DateTime scheduledAt,
    String notes = '',
    List<String> inviteAccountIds = const [],
  }) async {
    _setLoading(true);
    try {
      final plan = await _service.createPlan(
        title:            title,
        venueName:        venueName,
        address:          address,
        scheduledAt:      scheduledAt,
        notes:            notes,
        inviteAccountIds: inviteAccountIds,
      );
      _plans.insert(0, plan);
      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e.toString().replaceAll('Exception: ', '');
      debugPrint('[Plans] create error: $_error');
      notifyListeners();
      return false;
    } finally {
      _setLoading(false);
    }
  }

  Future<void> rsvp(String planId, String status) async {
    try {
      await _service.rsvp(planId, status);
      await load();
    } catch (e) {
      _error = e.toString().replaceAll('Exception: ', '');
      notifyListeners();
    }
  }

  Future<bool> cancel(String planId) async {
    try {
      await _service.cancelPlan(planId);
      await load();
      return true;
    } catch (e) {
      _error = e.toString().replaceAll('Exception: ', '');
      notifyListeners();
      return false;
    }
  }

  void _schedulePlanReminders(List<PlanModel> plans) {
    final notif = NotificationService();
    for (var i = 0; i < plans.length; i++) {
      final plan = plans[i];
      if (plan.status == 'Active' && plan.scheduledAt.isAfter(DateTime.now())) {
        notif.schedulePlanReminder(
          id: i,
          planTitle: plan.title,
          scheduledAt: plan.scheduledAt,
        );
      }
    }
  }

  void clearError() { _error = null; notifyListeners(); }
  void _setLoading(bool v) { _loading = v; notifyListeners(); }
}
