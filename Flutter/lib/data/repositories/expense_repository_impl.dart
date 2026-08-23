import 'package:dio/dio.dart';
import '../../core/constants/api_constants.dart';
import '../../domain/models/expense.dart';
import '../../domain/repositories/expense_repository.dart';
import '../api/api_client.dart';

class ExpenseRepositoryImpl implements ExpenseRepository {
  final Dio _dio;

  ExpenseRepositoryImpl(this._dio);

  @override
  Future<List<Expense>> getExpenses(
    String userId, {
    int? year,
    int? month,
    String? category,
  }) async {
    final response = await _dio.get(
      ApiConstants.expenses,
      queryParameters: {
        'year': year,
        'month': month,
        'category': category,
      }..removeWhere((_, v) => v == null),
    );
    final list = unwrap(response) as List<dynamic>;
    return list.map((e) => Expense.fromJson(e as Map<String, dynamic>)).toList();
  }

  @override
  Future<Expense> createExpense(
    String userId, {
    required double amount,
    required String category,
    String subCategory = '',
    String description = '',
    required DateTime date,
    String? source,
  }) async {
    final data = <String, dynamic>{
      'amount': amount,
      'category': category,
      'subCategory': subCategory,
      'description': description,
      'date': date.toUtc().toIso8601String(),
    };
    if (source != null) data['source'] = source;
    final response = await _dio.post(ApiConstants.expenses, data: data);
    return Expense.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<Expense> updateExpense(
    String userId,
    String id, {
    required double amount,
    required String category,
    String subCategory = '',
    String description = '',
    required DateTime date,
  }) async {
    final response = await _dio.put(
      ApiConstants.expense(id),
      data: {
        'amount': amount,
        'category': category,
        'subCategory': subCategory,
        'description': description,
        'date': date.toUtc().toIso8601String(),
      },
    );
    return Expense.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<void> deleteExpense(String userId, String id) async {
    await _dio.delete(ApiConstants.expense(id));
  }
}
