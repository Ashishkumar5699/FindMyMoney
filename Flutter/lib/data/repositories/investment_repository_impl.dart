import 'package:dio/dio.dart';
import '../../core/constants/api_constants.dart';
import '../../domain/models/investment.dart';
import '../../domain/repositories/investment_repository.dart';
import '../api/api_client.dart';

class InvestmentRepositoryImpl implements InvestmentRepository {
  final Dio _dio;

  InvestmentRepositoryImpl(this._dio);

  @override
  Future<List<Investment>> getInvestments(String userId) async {
    final response = await _dio.get(ApiConstants.investments);
    final list = unwrap(response) as List<dynamic>;
    return list
        .map((e) => Investment.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<Investment> createInvestment(
    String userId, {
    required String name,
    required String type,
    required double amount,
    required double currentValue,
    required DateTime date,
    String? notes,
  }) async {
    final response = await _dio.post(
      ApiConstants.investments,
      data: {
        'name': name,
        'type': type,
        'amount': amount,
        'currentValue': currentValue,
        'date': date.toUtc().toIso8601String(),
        'notes': notes,
      },
    );
    return Investment.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<Investment> updateInvestment(
    String userId,
    String id, {
    required String name,
    required String type,
    required double amount,
    required double currentValue,
    required DateTime date,
    String? notes,
  }) async {
    final response = await _dio.put(
      ApiConstants.investment(id),
      data: {
        'name': name,
        'type': type,
        'amount': amount,
        'currentValue': currentValue,
        'date': date.toUtc().toIso8601String(),
        'notes': notes,
      },
    );
    return Investment.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<void> deleteInvestment(String userId, String id) async {
    await _dio.delete(ApiConstants.investment(id));
  }
}
