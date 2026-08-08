import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/di/providers.dart';
import '../../../domain/models/loan.dart';

class LoanState {
  final List<Loan> loans;
  final bool isLoading;
  final String? error;

  const LoanState({
    this.loans = const [],
    this.isLoading = false,
    this.error,
  });

  LoanState copyWith({
    List<Loan>? loans,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) =>
      LoanState(
        loans: loans ?? this.loans,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : error ?? this.error,
      );
}

class LoanNotifier extends StateNotifier<LoanState> {
  final Ref _ref;
  String? _userId;

  LoanNotifier(this._ref) : super(const LoanState());

  Future<void> load(String userId) async {
    _userId = userId;
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final loans = await _ref.read(loanRepositoryProvider).getLoans(userId);
      state = state.copyWith(loans: loans, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> create({
    required String contactName,
    required double amount,
    required String direction,
    required DateTime date,
    String? notes,
  }) async {
    if (_userId == null) return false;
    try {
      final loan = await _ref.read(loanRepositoryProvider).createLoan(
            _userId!,
            contactName: contactName,
            amount: amount,
            direction: direction,
            date: date,
            notes: notes,
          );
      state = state.copyWith(loans: [loan, ...state.loans]);
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> update(
    String id, {
    required String contactName,
    required double amount,
    required String direction,
    required DateTime date,
    String? notes,
    required String status,
  }) async {
    if (_userId == null) return false;
    try {
      final updated = await _ref.read(loanRepositoryProvider).updateLoan(
            _userId!,
            id,
            contactName: contactName,
            amount: amount,
            direction: direction,
            date: date,
            notes: notes,
            status: status,
          );
      state = state.copyWith(
        loans: [
          for (final l in state.loans)
            if (l.id == id) updated else l,
        ],
      );
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> delete(String id) async {
    if (_userId == null) return false;
    try {
      await _ref.read(loanRepositoryProvider).deleteLoan(_userId!, id);
      state = state.copyWith(
        loans: state.loans.where((l) => l.id != id).toList(),
      );
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> pay(String id, {required double amount}) async {
    if (_userId == null) return false;
    try {
      final updated = await _ref
          .read(loanRepositoryProvider)
          .payLoan(_userId!, id, amount: amount);
      state = state.copyWith(
        loans: [
          for (final l in state.loans)
            if (l.id == id) updated else l,
        ],
      );
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }
}

final loanProvider = StateNotifierProvider<LoanNotifier, LoanState>(
  (ref) => LoanNotifier(ref),
);
