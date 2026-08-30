import 'package:dio/dio.dart';
import '../models/peer_loan.dart';

class PeerLoanRepository {
  final Dio _dio;

  PeerLoanRepository(this._dio);

  Future<List<PeerLoan>> getLoans(String userId) async {
    final res = await _dio.get('/api/findmymoney/peer-loans/$userId');
    final list = (res.data['data'] ?? res.data) as List<dynamic>;
    return list.map((j) => PeerLoan.fromJson(j as Map<String, dynamic>)).toList();
  }

  Future<PeerLoan> createLoan({
    required String userId,
    required String contactName,
    required String direction,
    required double amount,
    String? description,
  }) async {
    final res = await _dio.post(
      '/api/findmymoney/peer-loans/$userId',
      data: {
        'contactName': contactName,
        'direction': direction,
        'amount': amount,
        if (description != null) 'description': description,
      },
    );
    final data = res.data['data'] ?? res.data;
    return PeerLoan.fromJson(data as Map<String, dynamic>);
  }

  Future<PeerLoanPreview?> getPreview(String token) async {
    try {
      final res = await _dio.get('/api/findmymoney/peer-loans/preview/$token');
      final data = res.data['data'] ?? res.data;
      return PeerLoanPreview.fromJson(data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) return null;
      rethrow;
    }
  }

  Future<PeerLoan> verifyLoan(String token) async {
    final res = await _dio.post('/api/findmymoney/peer-loans/verify/$token');
    final data = res.data['data'] ?? res.data;
    return PeerLoan.fromJson(data as Map<String, dynamic>);
  }

  Future<PeerLoan> rejectLoan(String token, String reason) async {
    final res = await _dio.post(
      '/api/findmymoney/peer-loans/reject/$token',
      data: {'reason': reason},
    );
    final data = res.data['data'] ?? res.data;
    return PeerLoan.fromJson(data as Map<String, dynamic>);
  }

  Future<PeerLoanRepayment> addRepayment({
    required String userId,
    required String loanId,
    required double amount,
    String? description,
  }) async {
    final res = await _dio.post(
      '/api/findmymoney/peer-loans/$userId/$loanId/repayments',
      data: {
        'amount': amount,
        if (description != null) 'description': description,
      },
    );
    final data = res.data['data'] ?? res.data;
    return PeerLoanRepayment.fromJson(data as Map<String, dynamic>);
  }

  Future<PeerLoanRepayment> verifyRepayment(String token) async {
    final res = await _dio.post('/api/findmymoney/peer-loans/repayments/verify/$token');
    final data = res.data['data'] ?? res.data;
    return PeerLoanRepayment.fromJson(data as Map<String, dynamic>);
  }

  Future<PeerLoanRepayment> rejectRepayment(String token, String reason) async {
    final res = await _dio.post(
      '/api/findmymoney/peer-loans/repayments/reject/$token',
      data: {'reason': reason},
    );
    final data = res.data['data'] ?? res.data;
    return PeerLoanRepayment.fromJson(data as Map<String, dynamic>);
  }
}
