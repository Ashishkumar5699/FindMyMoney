import '../models/loan.dart';

abstract class LoanRepository {
  Future<List<Loan>> getLoans(String userId, {String? status, String? direction});
  Future<Loan> createLoan(
    String userId, {
    required String contactName,
    required double amount,
    required String direction,
    required DateTime date,
    String? notes,
  });
  Future<Loan> updateLoan(
    String userId,
    String id, {
    required String contactName,
    required double amount,
    required String direction,
    required DateTime date,
    String? notes,
    required String status,
  });
  Future<void> deleteLoan(String userId, String id);
  Future<Loan> payLoan(String userId, String id, {required double amount});
}
