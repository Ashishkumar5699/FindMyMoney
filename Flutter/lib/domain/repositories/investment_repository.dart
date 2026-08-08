import '../models/investment.dart';

abstract class InvestmentRepository {
  Future<List<Investment>> getInvestments(String userId);
  Future<Investment> createInvestment(
    String userId, {
    required String name,
    required String type,
    required double amount,
    required double currentValue,
    required DateTime date,
    String? notes,
  });
  Future<Investment> updateInvestment(
    String userId,
    String id, {
    required String name,
    required String type,
    required double amount,
    required double currentValue,
    required DateTime date,
    String? notes,
  });
  Future<void> deleteInvestment(String userId, String id);
}
