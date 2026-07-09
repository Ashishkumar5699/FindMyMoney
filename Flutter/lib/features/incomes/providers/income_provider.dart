import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/di/providers.dart';
import '../../../domain/models/income.dart';

class IncomeState {
  final List<Income> incomes;
  final bool isLoading;
  final String? error;

  const IncomeState({
    this.incomes = const [],
    this.isLoading = false,
    this.error,
  });

  IncomeState copyWith({
    List<Income>? incomes,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) =>
      IncomeState(
        incomes: incomes ?? this.incomes,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : error ?? this.error,
      );
}

class IncomeNotifier extends StateNotifier<IncomeState> {
  final Ref _ref;
  String? _userId;

  IncomeNotifier(this._ref) : super(const IncomeState());

  Future<void> load(String userId, {int? year, int? month}) async {
    _userId = userId;
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final incomes = await _ref
          .read(incomeRepositoryProvider)
          .getIncomes(userId, year: year, month: month);
      incomes.sort((a, b) => b.date.compareTo(a.date));
      state = state.copyWith(incomes: incomes, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> create({
    required double amount,
    required String source,
    String description = '',
    required DateTime date,
  }) async {
    if (_userId == null) return false;
    try {
      final income = await _ref
          .read(incomeRepositoryProvider)
          .createIncome(
            _userId!,
            amount: amount,
            source: source,
            description: description,
            date: date,
          );
      state = state.copyWith(incomes: [income, ...state.incomes]);
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> update(
    String id, {
    required double amount,
    required String source,
    String description = '',
    required DateTime date,
  }) async {
    if (_userId == null) return false;
    try {
      final updated = await _ref
          .read(incomeRepositoryProvider)
          .updateIncome(
            _userId!,
            id,
            amount: amount,
            source: source,
            description: description,
            date: date,
          );
      state = state.copyWith(
        incomes: [
          for (final i in state.incomes)
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
      await _ref.read(incomeRepositoryProvider).deleteIncome(_userId!, id);
      state = state.copyWith(
        incomes: state.incomes.where((i) => i.id != id).toList(),
      );
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }
}

final incomeProvider =
    StateNotifierProvider<IncomeNotifier, IncomeState>(
  (ref) => IncomeNotifier(ref),
);
