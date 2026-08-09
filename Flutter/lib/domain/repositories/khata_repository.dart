import '../models/khata_contact.dart';

abstract class KhataRepository {
  Future<List<KhataContact>> getContacts(String userId);
  Future<KhataContact> createContact(String userId, {required String name, String? notes});
  Future<void> deleteContact(String userId, String contactId);
  Future<List<KhataTransaction>> getTransactions(String userId, String contactId);
  Future<KhataTransaction> addTransaction(String userId, String contactId, {required double amount, required int type, required DateTime date, String? notes});
  Future<void> deleteTransaction(String userId, String contactId, String txnId);
  Future<KhataContact> settle(String userId, String contactId);
}
