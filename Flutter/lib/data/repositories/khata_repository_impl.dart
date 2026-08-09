import 'package:dio/dio.dart';
import '../../core/constants/api_constants.dart';
import '../../data/api/api_client.dart';
import '../../domain/models/khata_contact.dart';
import '../../domain/repositories/khata_repository.dart';

class KhataRepositoryImpl implements KhataRepository {
  final Dio _dio;
  KhataRepositoryImpl(this._dio);

  @override
  Future<List<KhataContact>> getContacts(String userId) async {
    final res = await _dio.get(ApiConstants.khataContacts);
    final list = unwrap(res) as List<dynamic>;
    return list.map((e) => KhataContact.fromJson(e as Map<String, dynamic>)).toList();
  }

  @override
  Future<KhataContact> createContact(String userId, {required String name, String? notes}) async {
    final res = await _dio.post(ApiConstants.khataContacts, data: {'name': name, 'notes': notes});
    return KhataContact.fromJson(unwrap(res) as Map<String, dynamic>);
  }

  @override
  Future<void> deleteContact(String userId, String contactId) async {
    await _dio.delete(ApiConstants.khataContact(contactId));
  }

  @override
  Future<List<KhataTransaction>> getTransactions(String userId, String contactId) async {
    final res = await _dio.get(ApiConstants.khataTransactions(contactId));
    final list = unwrap(res) as List<dynamic>;
    return list.map((e) => KhataTransaction.fromJson(e as Map<String, dynamic>)).toList();
  }

  @override
  Future<KhataTransaction> addTransaction(String userId, String contactId, {required double amount, required int type, required DateTime date, String? notes}) async {
    final res = await _dio.post(ApiConstants.khataTransactions(contactId), data: {
      'amount': amount,
      'type': type,
      'date': date.toUtc().toIso8601String(),
      'notes': notes,
    });
    return KhataTransaction.fromJson(unwrap(res) as Map<String, dynamic>);
  }

  @override
  Future<void> deleteTransaction(String userId, String contactId, String txnId) async {
    await _dio.delete(ApiConstants.khataTransaction(contactId, txnId));
  }

  @override
  Future<KhataContact> settle(String userId, String contactId) async {
    final res = await _dio.post(ApiConstants.khataSettle(contactId));
    return KhataContact.fromJson(unwrap(res) as Map<String, dynamic>);
  }
}
