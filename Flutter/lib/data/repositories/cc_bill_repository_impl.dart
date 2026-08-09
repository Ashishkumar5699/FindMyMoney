import 'package:dio/dio.dart';
import '../../core/constants/api_constants.dart';
import '../../domain/models/cc_bill.dart';
import '../../domain/repositories/cc_bill_repository.dart';
import '../api/api_client.dart';

class CcBillRepositoryImpl implements CcBillRepository {
  final Dio _dio;

  CcBillRepositoryImpl(this._dio);

  @override
  Future<List<CcBill>> getCcBills(String userId) async {
    final response = await _dio.get(ApiConstants.ccBills);
    final list = unwrap(response) as List<dynamic>;
    return list
        .map((e) => CcBill.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<CcBill> generateCcBill(
    String userId, {
    required String paymentSourceId,
    required double totalAmount,
    required int billingMonth,
    required int billingYear,
    required String dueDate,
  }) async {
    final response = await _dio.post(
      ApiConstants.ccBillsGenerate,
      data: {
        'paymentSourceId': paymentSourceId,
        'totalAmount': totalAmount,
        'billingMonth': billingMonth,
        'billingYear': billingYear,
        'dueDate': dueDate,
      },
    );
    return CcBill.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<CcBill> updateCcBill(
    String userId,
    String id, {
    required double totalAmount,
    required String dueDate,
    required String status,
  }) async {
    final response = await _dio.put(
      ApiConstants.ccBill(id),
      data: {
        'totalAmount': totalAmount,
        'dueDate': dueDate,
        'status': status,
      },
    );
    return CcBill.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<void> deleteCcBill(String userId, String id) async {
    await _dio.delete(ApiConstants.ccBill(id));
  }
}
