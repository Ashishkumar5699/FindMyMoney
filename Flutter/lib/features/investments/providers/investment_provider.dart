import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/di/providers.dart';
import '../../../domain/models/investment.dart';

class InvestmentState {
  final List<Investment> investments;
  final bool isLoading;
  final String? error;

  const InvestmentState({
    this.investments = const [],
    this.isLoading = false,
    this.error,
  });

  InvestmentState copyWith({
    List<Investment>? investments,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) =>
      InvestmentState(
        investments: investments ?? this.investments,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : error ?? this.error,
      );
}

class InvestmentNotifier extends StateNotifier<InvestmentState> {
  final Ref _ref;
  String? _userId;

  InvestmentNotifier(this._ref) : super(const InvestmentState());

  Future<void> load(String userId) async {
    _userId = userId;
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final investments =
          await _ref.read(investmentRepositoryProvider).getInvestments(userId);
      state = state.copyWith(investments: investments, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> create({
    required String name,
    required String type,
    required double amount,
    required double currentValue,
    required DateTime date,
    String? notes,
  }) async {
    if (_userId == null) return false;
    try {
      final investment =
          await _ref.read(investmentRepositoryProvider).createInvestment(
                _userId!,
                name: name,
                type: type,
                amount: amount,
                currentValue: currentValue,
                date: date,
                notes: notes,
              );
      state = state.copyWith(investments: [investment, ...state.investments]);
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> update(
    String id, {
    required String name,
    required String type,
    required double amount,
    required double currentValue,
    required DateTime date,
    String? notes,
  }) async {
    if (_userId == null) return false;
    try {
      final updated =
          await _ref.read(investmentRepositoryProvider).updateInvestment(
                _userId!,
                id,
                name: name,
                type: type,
                amount: amount,
                currentValue: currentValue,
                date: date,
                notes: notes,
              );
      state = state.copyWith(
        investments: [
          for (final i in state.investments)
            if (i.id == id) updated else i,
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
      await _ref.read(investmentRepositoryProvider).deleteInvestment(_userId!, id);
      state = state.copyWith(
        investments: state.investments.where((i) => i.id != id).toList(),
      );
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }
}

final investmentProvider =
    StateNotifierProvider<InvestmentNotifier, InvestmentState>(
  (ref) => InvestmentNotifier(ref),
);
