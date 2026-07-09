import '../models/emi.dart';

abstract class EmiRepository {
  Future<List<Emi>> getEmis(String userId, {String? status});
  Future<Emi> createEmi(
    String userId, {
    required String loanName,
    required String bankName,
    required double totalAmount,
    required double emiAmount,
    required int totalEmis,
    required int paidEmis,
    required double interestRate,
    required DateTime startDate,
    required DateTime nextDueDate,
    String status,
    String? description,
  });
  Future<Emi> updateEmi(
    String userId,
    String id, {
    required String loanName,
    required String bankName,
    required double totalAmount,
    required double emiAmount,
    required int totalEmis,
    required int paidEmis,
    required double interestRate,
    required DateTime startDate,
    required DateTime nextDueDate,
    String status,
    String? description,
  });
  Future<void> deleteEmi(String userId, String id);
}
