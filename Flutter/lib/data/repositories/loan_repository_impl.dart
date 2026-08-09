import 'package:dio/dio.dart';
import '../../core/constants/api_constants.dart';
import '../../domain/models/loan.dart';
import '../../domain/repositories/loan_repository.dart';
import '../api/api_client.dart';

class LoanRepositoryImpl implements LoanRepository {
  final Dio _dio;

  LoanRepositoryImpl(this._dio);

  @override
  Future<List<Loan>> getLoans(String userId,
      {String? status, String? direction}) async {
    final response = await _dio.get(
      ApiConstants.loans,
      queryParameters: {
        'status': status,
        'direction': direction,
      }..removeWhere((_, v) => v == null),
    );
    final list = unwrap(response) as List<dynamic>;
    return list.map((e) => Loan.fromJson(e as Map<String, dynamic>)).toList();
  }

  @override
  Future<Loan> createLoan(
    String userId, {
    required String contactName,
    required double amount,
    required String direction,
    required DateTime date,
    String? notes,
  }) async {
    final response = await _dio.post(
      ApiConstants.loans,
      data: {
        'contactName': contactName,
        'amount': amount,
        'direction': direction,
        'date': date.toUtc().toIso8601String(),
        'notes': notes,
      },
    );
    return Loan.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<Loan> updateLoan(
    String userId,
    String id, {
    required String contactName,
    required double amount,
    required String direction,
    required DateTime date,
    String? notes,
    required String status,
  }) async {
    final response = await _dio.put(
      ApiConstants.loan(id),
      data: {
        'contactName': contactName,
        'amount': amount,
        'direction': direction,
        'date': date.toUtc().toIso8601String(),
        'notes': notes,
        'status': status,
      },
    );
    return Loan.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<void> deleteLoan(String userId, String id) async {
    await _dio.delete(ApiConstants.loan(id));
  }

  @override
  Future<Loan> payLoan(String userId, String id,
      {required double amount}) async {
    final response = await _dio.post(
      ApiConstants.loanPay(id),
      data: {'amount': amount},
    );
    return Loan.fromJson(unwrap(response) as Map<String, dynamic>);
  }
}
