import 'package:dio/dio.dart';
import '../../core/constants/api_constants.dart';
import '../../domain/models/income.dart';
import '../../domain/repositories/income_repository.dart';
import '../api/api_client.dart';

class IncomeRepositoryImpl implements IncomeRepository {
  final Dio _dio;

  IncomeRepositoryImpl(this._dio);

  @override
  Future<List<Income>> getIncomes(
    String userId, {
    int? year,
    int? month,
  }) async {
    final response = await _dio.get(
      ApiConstants.incomes(userId),
      queryParameters: {
        'year': year,
        'month': month,
      }..removeWhere((_, v) => v == null),
    );
    final list = unwrap(response) as List<dynamic>;
    return list
        .map((e) => Income.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<Income> createIncome(
    String userId, {
    required double amount,
    required String source,
    String description = '',
    required DateTime date,
  }) async {
    final response = await _dio.post(
      ApiConstants.incomes(userId),
      data: {
        'amount': amount,
        'source': source,
        'description': description,
        'date': date.toIso8601String(),
      },
    );
    return Income.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<Income> updateIncome(
    String userId,
    String id, {
    required double amount,
    required String source,
    String description = '',
    required DateTime date,
  }) async {
    final response = await _dio.put(
      ApiConstants.income(userId, id),
      data: {
        'amount': amount,
        'source': source,
        'description': description,
        'date': date.toIso8601String(),
      },
    );
    return Income.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<void> deleteIncome(String userId, String id) async {
    await _dio.delete(ApiConstants.income(userId, id));
  }
}
