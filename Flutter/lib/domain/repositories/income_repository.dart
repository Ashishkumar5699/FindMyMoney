import '../models/income.dart';

abstract class IncomeRepository {
  Future<List<Income>> getIncomes(
    String userId, {
    int? year,
    int? month,
  });
  Future<Income> createIncome(
    String userId, {
    required double amount,
    required String source,
    String description,
    required DateTime date,
  });
  Future<Income> updateIncome(
    String userId,
    String id, {
    required double amount,
    required String source,
    String description,
    required DateTime date,
  });
  Future<void> deleteIncome(String userId, String id);
}
