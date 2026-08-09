import '../models/payment_source.dart';

abstract class PaymentSourceRepository {
  Future<List<PaymentSource>> getPaymentSources(String userId);
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
  });
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
  });
  Future<void> deletePaymentSource(String userId, String id);
  Future<PaymentSource> toggleStatus(String userId, String id,
      {required bool isActive});
}
