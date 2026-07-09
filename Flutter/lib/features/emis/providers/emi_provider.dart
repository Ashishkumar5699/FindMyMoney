import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/di/providers.dart';
import '../../../domain/models/emi.dart';

class EmiState {
  final List<Emi> emis;
  final bool isLoading;
  final String? error;

  const EmiState({
    this.emis = const [],
    this.isLoading = false,
    this.error,
  });

  EmiState copyWith({
    List<Emi>? emis,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) =>
      EmiState(
        emis: emis ?? this.emis,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : error ?? this.error,
      );
}

class EmiNotifier extends StateNotifier<EmiState> {
  final Ref _ref;
  String? _userId;

  EmiNotifier(this._ref) : super(const EmiState());

  Future<void> load(String userId) async {
    _userId = userId;
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final emis =
          await _ref.read(emiRepositoryProvider).getEmis(userId);
      state = state.copyWith(emis: emis, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> create({
    required String loanName,
    required String bankName,
    required double totalAmount,
    required double emiAmount,
    required int totalEmis,
    required int paidEmis,
    required double interestRate,
    required DateTime startDate,
    required DateTime nextDueDate,
    String status = 'Active',
    String? description,
  }) async {
    if (_userId == null) return false;
    try {
      final emi = await _ref.read(emiRepositoryProvider).createEmi(
            _userId!,
            loanName: loanName,
            bankName: bankName,
            totalAmount: totalAmount,
            emiAmount: emiAmount,
            totalEmis: totalEmis,
            paidEmis: paidEmis,
            interestRate: interestRate,
            startDate: startDate,
            nextDueDate: nextDueDate,
            status: status,
            description: description,
          );
      state = state.copyWith(emis: [emi, ...state.emis]);
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> update(
    String id, {
    required String loanName,
    required String bankName,
    required double totalAmount,
    required double emiAmount,
    required int totalEmis,
    required int paidEmis,
    required double interestRate,
    required DateTime startDate,
    required DateTime nextDueDate,
    String status = 'Active',
    String? description,
  }) async {
    if (_userId == null) return false;
    try {
      final updated = await _ref.read(emiRepositoryProvider).updateEmi(
            _userId!,
            id,
            loanName: loanName,
            bankName: bankName,
            totalAmount: totalAmount,
            emiAmount: emiAmount,
            totalEmis: totalEmis,
            paidEmis: paidEmis,
            interestRate: interestRate,
            startDate: startDate,
            nextDueDate: nextDueDate,
            status: status,
            description: description,
          );
      state = state.copyWith(
        emis: [
          for (final e in state.emis)
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
      await _ref.read(emiRepositoryProvider).deleteEmi(_userId!, id);
      state = state.copyWith(
        emis: state.emis.where((e) => e.id != id).toList(),
      );
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }
}

final emiProvider = StateNotifierProvider<EmiNotifier, EmiState>(
  (ref) => EmiNotifier(ref),
);
