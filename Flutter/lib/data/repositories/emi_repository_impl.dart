import 'package:dio/dio.dart';
import '../../core/constants/api_constants.dart';
import '../../domain/models/emi.dart';
import '../../domain/repositories/emi_repository.dart';
import '../api/api_client.dart';

class EmiRepositoryImpl implements EmiRepository {
  final Dio _dio;

  EmiRepositoryImpl(this._dio);

  @override
  Future<List<Emi>> getEmis(String userId, {String? status}) async {
    final response = await _dio.get(
      ApiConstants.emis(userId),
      queryParameters: {
        'status': status,
      }..removeWhere((_, v) => v == null),
    );
    final list = unwrap(response) as List<dynamic>;
    return list.map((e) => Emi.fromJson(e as Map<String, dynamic>)).toList();
  }

  @override
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
    String status = 'Active',
    String? description,
  }) async {
    final response = await _dio.post(
      ApiConstants.emis(userId),
      data: {
        'loanName': loanName,
        'bankName': bankName,
        'totalAmount': totalAmount,
        'emiAmount': emiAmount,
        'totalEmis': totalEmis,
        'paidEmis': paidEmis,
        'interestRate': interestRate,
        'startDate': startDate.toIso8601String(),
        'nextDueDate': nextDueDate.toIso8601String(),
        'status': status,
        'description': description,
      },
    );
    return Emi.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
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
    String status = 'Active',
    String? description,
  }) async {
    final response = await _dio.put(
      ApiConstants.emi(userId, id),
      data: {
        'loanName': loanName,
        'bankName': bankName,
        'totalAmount': totalAmount,
        'emiAmount': emiAmount,
        'totalEmis': totalEmis,
        'paidEmis': paidEmis,
        'interestRate': interestRate,
        'startDate': startDate.toIso8601String(),
        'nextDueDate': nextDueDate.toIso8601String(),
        'status': status,
        'description': description,
      },
    );
    return Emi.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<void> deleteEmi(String userId, String id) async {
    await _dio.delete(ApiConstants.emi(userId, id));
  }
}
