import '../models/transfer.dart';

abstract class TransferRepository {
  Future<List<Transfer>> getTransfers(String userId);
  Future<Transfer> createTransfer(
    String userId, {
    required String fromSourceId,
    String? toSourceId,
    required double amount,
    required DateTime date,
    String? notes,
  });
  Future<Transfer> updateTransfer(
    String userId,
    String id, {
    required String fromSourceId,
    String? toSourceId,
    required double amount,
    required DateTime date,
    String? notes,
  });
  Future<void> deleteTransfer(String userId, String id);
}
