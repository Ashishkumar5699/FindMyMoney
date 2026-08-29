import '../../../core/api/api_client.dart';
import '../../../core/api/api_endpoints.dart';
import '../models/split_models.dart';

class SplitService {
  final _api = ApiClient();

  Future<List<SplitModel>> getUnsettled() async {
    final data = await _api.getList(ApiEndpoints.unsettledSplits);
    return data.map((e) => SplitModel.fromJson(e)).toList();
  }

  Future<List<SplitModel>> getSplitsForPlan(String planId) async {
    final data = await _api.getList(ApiEndpoints.splitsForPlan(planId));
    return data.map((e) => SplitModel.fromJson(e)).toList();
  }

  Future<SplitModel> createSplit({
    required String planId,
    required double totalAmount,
    required String description,
    String currency = 'INR',
    required List<Map<String, dynamic>> participants,
  }) async {
    final data = await _api.post(ApiEndpoints.splits, {
      'planId':       planId,
      'totalAmount':  totalAmount,
      'currency':     currency,
      'description':  description,
      'participants': participants,
    });
    return SplitModel.fromJson(data);
  }

  Future<SplitModel> settleShare(String splitId) async {
    final data = await _api.put(ApiEndpoints.settleShare(splitId), {});
    return SplitModel.fromJson(data);
  }
}
