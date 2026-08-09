import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/di/providers.dart';
import '../../../domain/models/cc_bill.dart';

class CcBillState {
  final List<CcBill> bills;
  final bool isLoading;
  final String? error;

  const CcBillState({
    this.bills = const [],
    this.isLoading = false,
    this.error,
  });

  CcBillState copyWith({
    List<CcBill>? bills,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) =>
      CcBillState(
        bills: bills ?? this.bills,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : error ?? this.error,
      );
}

class CcBillNotifier extends StateNotifier<CcBillState> {
  final Ref _ref;
  String? _userId;

  CcBillNotifier(this._ref) : super(const CcBillState());

  Future<void> load(String userId) async {
    _userId = userId;
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final bills =
          await _ref.read(ccBillRepositoryProvider).getCcBills(userId);
      state = state.copyWith(bills: bills, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> generate({
    required String paymentSourceId,
    required double totalAmount,
    required int billingMonth,
    required int billingYear,
    required String dueDate,
  }) async {
    if (_userId == null) return false;
    try {
      final bill =
          await _ref.read(ccBillRepositoryProvider).generateCcBill(
                _userId!,
                paymentSourceId: paymentSourceId,
                totalAmount: totalAmount,
                billingMonth: billingMonth,
                billingYear: billingYear,
                dueDate: dueDate,
              );
      state = state.copyWith(bills: [bill, ...state.bills]);
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> update(
    String id, {
    required double totalAmount,
    required String dueDate,
    required String status,
  }) async {
    if (_userId == null) return false;
    try {
      final updated =
          await _ref.read(ccBillRepositoryProvider).updateCcBill(
                _userId!,
                id,
                totalAmount: totalAmount,
                dueDate: dueDate,
                status: status,
              );
      state = state.copyWith(
        bills: [
          for (final b in state.bills)
            if (b.id == id) updated else b,
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
      await _ref.read(ccBillRepositoryProvider).deleteCcBill(_userId!, id);
      state = state.copyWith(
        bills: state.bills.where((b) => b.id != id).toList(),
      );
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }
}

final ccBillProvider =
    StateNotifierProvider<CcBillNotifier, CcBillState>(
  (ref) => CcBillNotifier(ref),
);
