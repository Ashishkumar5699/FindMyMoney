import '../../../core/api/api_client.dart';
import '../../../core/api/api_endpoints.dart';
import '../models/plan_models.dart';

class PlanService {
  final _api = ApiClient();

  Future<List<PlanModel>> getMyPlans() async {
    final data = await _api.getList(ApiEndpoints.plans);
    return data.map((e) => PlanModel.fromJson(e)).toList();
  }

  Future<PlanModel> createPlan({
    required String title,
    required String venueName,
    required String address,
    required DateTime scheduledAt,
    String notes = '',
    double latitude = 0,
    double longitude = 0,
    List<String> inviteAccountIds = const [],
  }) async {
    final data = await _api.post(ApiEndpoints.plans, {
      'title':            title,
      'venueName':        venueName,
      'address':          address,
      'scheduledAt':      scheduledAt.toUtc().toIso8601String(),
      'notes':            notes,
      'latitude':         latitude,
      'longitude':        longitude,
      'inviteAccountIds': inviteAccountIds,
    });
    return PlanModel.fromJson(data);
  }

  Future<void> rsvp(String planId, String status) async {
    await _api.put(ApiEndpoints.rsvp(planId), {'status': status});
  }

  Future<void> cancelPlan(String planId) async {
    await _api.delete(ApiEndpoints.plan(planId));
  }
}
