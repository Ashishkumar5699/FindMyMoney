import '../models/cc_bill.dart';

abstract class CcBillRepository {
  Future<List<CcBill>> getCcBills(String userId);
  Future<CcBill> generateCcBill(
    String userId, {
    required String paymentSourceId,
    required double totalAmount,
    required int billingMonth,
    required int billingYear,
    required String dueDate,
  });
  Future<CcBill> updateCcBill(
    String userId,
    String id, {
    required double totalAmount,
    required String dueDate,
    required String status,
  });
  Future<void> deleteCcBill(String userId, String id);
}
