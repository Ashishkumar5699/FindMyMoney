import 'package:dio/dio.dart';
import '../../core/constants/api_constants.dart';
import '../../domain/models/payment_source.dart';
import '../../domain/repositories/payment_source_repository.dart';
import '../api/api_client.dart';

class PaymentSourceRepositoryImpl implements PaymentSourceRepository {
  final Dio _dio;

  PaymentSourceRepositoryImpl(this._dio);

  @override
  Future<List<PaymentSource>> getPaymentSources(String userId) async {
    final response = await _dio.get(ApiConstants.paymentSources);
    final list = unwrap(response) as List<dynamic>;
    return list
        .map((e) => PaymentSource.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<PaymentSource> createPaymentSource(
    String userId, {
    required String name,
    required String type,
    String? accountLast4,
    String? bankName,
    double? creditLimit,
    int? billingCycleDay,
    int? dueDaysAfterBilling,
    required double balance,
  }) async {
    final response = await _dio.post(
      ApiConstants.paymentSources,
      data: {
        'name': name,
        'type': type,
        'accountLast4': accountLast4,
        'bankName': bankName,
        'creditLimit': creditLimit,
        'billingCycleDay': billingCycleDay,
        'dueDaysAfterBilling': dueDaysAfterBilling,
        'balance': balance,
      },
    );
    return PaymentSource.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<PaymentSource> updatePaymentSource(
    String userId,
    String id, {
    required String name,
    required String type,
    String? accountLast4,
    String? bankName,
    double? creditLimit,
    int? billingCycleDay,
    int? dueDaysAfterBilling,
    required double balance,
  }) async {
    final response = await _dio.put(
      ApiConstants.paymentSource(id),
      data: {
        'name': name,
        'type': type,
        'accountLast4': accountLast4,
        'bankName': bankName,
        'creditLimit': creditLimit,
        'billingCycleDay': billingCycleDay,
        'dueDaysAfterBilling': dueDaysAfterBilling,
        'balance': balance,
      },
    );
    return PaymentSource.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<void> deletePaymentSource(String userId, String id) async {
    await _dio.delete(ApiConstants.paymentSource(id));
  }

  @override
  Future<PaymentSource> toggleStatus(String userId, String id,
      {required bool isActive}) async {
    final response = await _dio.patch(
      ApiConstants.paymentSourceStatus(id),
      data: {'isActive': isActive},
    );
    return PaymentSource.fromJson(unwrap(response) as Map<String, dynamic>);
  }
}
