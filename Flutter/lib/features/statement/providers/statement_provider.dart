import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/models/statement_summary.dart';
import '../../expenses/providers/expense_provider.dart';
import '../../incomes/providers/income_provider.dart';

class StatementState {
  final StatementSummary? summary;
  final bool isLoading;
  final String? error;
  final int month;
  final int year;

  const StatementState({
    this.summary,
    this.isLoading = false,
    this.error,
    required this.month,
    required this.year,
  });

  StatementState copyWith({
    StatementSummary? summary,
    bool? isLoading,
    String? error,
    int? month,
    int? year,
    bool clearError = false,
  }) =>
      StatementState(
        summary: summary ?? this.summary,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : error ?? this.error,
        month: month ?? this.month,
        year: year ?? this.year,
      );
}

class StatementNotifier extends StateNotifier<StatementState> {
  final Ref _ref;
  String? _userId;

  StatementNotifier(this._ref)
      : super(StatementState(
          month: DateTime.now().month,
          year: DateTime.now().year,
        ));

  Future<void> load(String userId) async {
    _userId = userId;
    await _compute();
  }

  Future<void> prevMonth() async {
    final d = DateTime(state.year, state.month - 1);
    state = state.copyWith(month: d.month, year: d.year);
    await _compute();
  }

  Future<void> nextMonth() async {
    final now = DateTime.now();
    if (state.year == now.year && state.month == now.month) return;
    final d = DateTime(state.year, state.month + 1);
    state = state.copyWith(month: d.month, year: d.year);
    await _compute();
  }

  Future<void> _compute() async {
    if (_userId == null) return;
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      // Load expenses + incomes for this month
      await _ref.read(expenseProvider.notifier).load(
            _userId!,
            year: state.year,
            month: state.month,
          );
      await _ref.read(incomeProvider.notifier).load(
            _userId!,
            year: state.year,
            month: state.month,
          );

      final expenses = _ref.read(expenseProvider).expenses;
      final incomes = _ref.read(incomeProvider).incomes;

      final totalIncome = incomes.fold(0.0, (s, i) => s + i.amount);
      final totalExpense = expenses.fold(0.0, (s, e) => s + e.amount);

      // Group by category
      final Map<String, Map<String, double>> categoryMap = {};
      for (final e in expenses) {
        categoryMap.putIfAbsent(e.category, () => {});
        final sub = e.subCategory.isNotEmpty ? e.subCategory : 'Other';
        categoryMap[e.category]![sub] =
            (categoryMap[e.category]![sub] ?? 0) + e.amount;
      }

      final categories = categoryMap.entries.map((entry) {
        final catTotal =
            entry.value.values.fold(0.0, (s, v) => s + v);
        final subCats = entry.value.entries
            .map((s) => SubCategorySummary(
                  subCategory: s.key,
                  total: s.value,
                ))
            .toList()
          ..sort((a, b) => b.total.compareTo(a.total));

        return CategorySummary(
          category: entry.key,
          total: catTotal,
          percentage:
              totalExpense > 0 ? (catTotal / totalExpense) * 100 : 0,
          subCategories: subCats,
        );
      }).toList()
        ..sort((a, b) => b.total.compareTo(a.total));

      state = state.copyWith(
        isLoading: false,
        summary: StatementSummary(
          month: state.month,
          year: state.year,
          totalIncome: totalIncome,
          totalExpense: totalExpense,
          expenseByCategory: categories,
        ),
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

final statementProvider =
    StateNotifierProvider<StatementNotifier, StatementState>(
  (ref) => StatementNotifier(ref),
);
