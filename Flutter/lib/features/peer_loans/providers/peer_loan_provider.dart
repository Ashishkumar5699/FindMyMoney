import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/di/providers.dart';
import '../models/peer_loan.dart';
import '../repositories/peer_loan_repository.dart';

final peerLoanRepositoryProvider = Provider<PeerLoanRepository>(
  (ref) => PeerLoanRepository(ref.watch(dioProvider)),
);

// ── State ──────────────────────────────────────────────────────────────────────

class PeerLoanState {
  final List<PeerLoan> loans;
  final bool isLoading;
  final String? error;

  const PeerLoanState({
    this.loans = const [],
    this.isLoading = false,
    this.error,
  });

  PeerLoanState copyWith({
    List<PeerLoan>? loans,
    bool? isLoading,
    String? error,
  }) =>
      PeerLoanState(
        loans: loans ?? this.loans,
        isLoading: isLoading ?? this.isLoading,
        error: error,
      );
}

// ── Notifier ───────────────────────────────────────────────────────────────────

class PeerLoanNotifier extends StateNotifier<PeerLoanState> {
  final PeerLoanRepository _repo;

  PeerLoanNotifier(this._repo) : super(const PeerLoanState());

  Future<void> load(String userId) async {
    state = state.copyWith(isLoading: true);
    try {
      final loans = await _repo.getLoans(userId);
      state = state.copyWith(loans: loans, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<PeerLoan?> createLoan({
    required String userId,
    required String contactName,
    required String direction,
    required double amount,
    String? description,
  }) async {
    try {
      final loan = await _repo.createLoan(
        userId: userId,
        contactName: contactName,
        direction: direction,
        amount: amount,
        description: description,
      );
      state = state.copyWith(loans: [loan, ...state.loans]);
      return loan;
    } catch (_) {
      return null;
    }
  }

  Future<PeerLoan?> verifyLoan(String token) async {
    try {
      final updated = await _repo.verifyLoan(token);
      _replaceLoan(updated);
      return updated;
    } catch (_) {
      return null;
    }
  }

  Future<PeerLoan?> rejectLoan(String token, String reason) async {
    try {
      final updated = await _repo.rejectLoan(token, reason);
      _replaceLoan(updated);
      return updated;
    } catch (_) {
      return null;
    }
  }

  Future<PeerLoanRepayment?> addRepayment({
    required String userId,
    required String loanId,
    required double amount,
    String? description,
  }) async {
    try {
      final repayment = await _repo.addRepayment(
        userId: userId,
        loanId: loanId,
        amount: amount,
        description: description,
      );
      // Reload to get updated balance
      await load(userId);
      return repayment;
    } catch (_) {
      return null;
    }
  }

  void _replaceLoan(PeerLoan updated) {
    state = state.copyWith(
      loans: state.loans.map((l) => l.id == updated.id ? updated : l).toList(),
    );
  }
}

final peerLoanProvider =
    StateNotifierProvider<PeerLoanNotifier, PeerLoanState>(
  (ref) => PeerLoanNotifier(ref.watch(peerLoanRepositoryProvider)),
);
