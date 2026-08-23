import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/di/providers.dart';
import '../../../domain/models/expense.dart';

class ExpenseState {
  final List<Expense> expenses;
  final bool isLoading;
  final String? error;

  const ExpenseState({
    this.expenses = const [],
    this.isLoading = false,
    this.error,
  });

  ExpenseState copyWith({
    List<Expense>? expenses,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) =>
      ExpenseState(
        expenses: expenses ?? this.expenses,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : error ?? this.error,
      );
}

class ExpenseNotifier extends StateNotifier<ExpenseState> {
  final Ref _ref;
  String? _userId;

  ExpenseNotifier(this._ref) : super(const ExpenseState());

  Future<void> load(String userId, {int? year, int? month}) async {
    _userId = userId;
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final expenses = await _ref.read(expenseRepositoryProvider).getExpenses(
            userId,
            year: year,
            month: month,
          );
      expenses.sort((a, b) => b.date.compareTo(a.date));
      state = state.copyWith(expenses: expenses, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> create({
    required double amount,
    required String category,
    String subCategory = '',
    String description = '',
    required DateTime date,
    String? source,
  }) async {
    if (_userId == null) return false;
    try {
      final expense = await _ref
          .read(expenseRepositoryProvider)
          .createExpense(
            _userId!,
            amount: amount,
            category: category,
            subCategory: subCategory,
            description: description,
            date: date,
            source: source,
          );
      state = state.copyWith(
        expenses: [expense, ...state.expenses],
      );
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> update(
    String id, {
    required double amount,
    required String category,
    String subCategory = '',
    String description = '',
    required DateTime date,
  }) async {
    if (_userId == null) return false;
    try {
      final updated = await _ref
          .read(expenseRepositoryProvider)
          .updateExpense(
            _userId!,
            id,
            amount: amount,
            category: category,
            subCategory: subCategory,
            description: description,
            date: date,
          );
      state = state.copyWith(
        expenses: [
          for (final e in state.expenses)
            if (e.id == id) updated else e,
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
      await _ref.read(expenseRepositoryProvider).deleteExpense(_userId!, id);
      state = state.copyWith(
        expenses: state.expenses.where((e) => e.id != id).toList(),
      );
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }
}

final expenseProvider =
    StateNotifierProvider<ExpenseNotifier, ExpenseState>(
  (ref) => ExpenseNotifier(ref),
);
