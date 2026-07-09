import '../models/expense.dart';

abstract class ExpenseRepository {
  Future<List<Expense>> getExpenses(
    String userId, {
    int? year,
    int? month,
    String? category,
  });
  Future<Expense> createExpense(
    String userId, {
    required double amount,
    required String category,
    String subCategory,
    String description,
    required DateTime date,
  });
  Future<Expense> updateExpense(
    String userId,
    String id, {
    required double amount,
    required String category,
    String subCategory,
    String description,
    required DateTime date,
  });
  Future<void> deleteExpense(String userId, String id);
}
