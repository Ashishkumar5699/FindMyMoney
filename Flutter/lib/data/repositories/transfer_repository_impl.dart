import 'package:dio/dio.dart';
import '../../core/constants/api_constants.dart';
import '../../domain/models/transfer.dart';
import '../../domain/repositories/transfer_repository.dart';
import '../api/api_client.dart';

class TransferRepositoryImpl implements TransferRepository {
  final Dio _dio;

  TransferRepositoryImpl(this._dio);

  @override
  Future<List<Transfer>> getTransfers(String userId) async {
    final response = await _dio.get(ApiConstants.transfers);
    final list = unwrap(response) as List<dynamic>;
    return list
        .map((e) => Transfer.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<Transfer> createTransfer(
    String userId, {
    required String fromSourceId,
    String? toSourceId,
    required double amount,
    required DateTime date,
    String? notes,
  }) async {
    final response = await _dio.post(
      ApiConstants.transfers,
      data: {
        'fromSourceId': fromSourceId,
        'toSourceId': toSourceId,
        'amount': amount,
        'date': date.toUtc().toIso8601String(),
        'notes': notes,
      },
    );
    return Transfer.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<Transfer> updateTransfer(
    String userId,
    String id, {
    required String fromSourceId,
    String? toSourceId,
    required double amount,
    required DateTime date,
    String? notes,
  }) async {
    final response = await _dio.put(
      ApiConstants.transfer(id),
      data: {
        'fromSourceId': fromSourceId,
        'toSourceId': toSourceId,
        'amount': amount,
        'date': date.toUtc().toIso8601String(),
        'notes': notes,
      },
    );
    return Transfer.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<void> deleteTransfer(String userId, String id) async {
    await _dio.delete(ApiConstants.transfer(id));
  }
}
