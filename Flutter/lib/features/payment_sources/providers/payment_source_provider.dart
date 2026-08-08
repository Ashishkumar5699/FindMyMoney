import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/di/providers.dart';
import '../../../domain/models/payment_source.dart';

class PaymentSourceState {
  final List<PaymentSource> sources;
  final bool isLoading;
  final String? error;

  const PaymentSourceState({
    this.sources = const [],
    this.isLoading = false,
    this.error,
  });

  PaymentSourceState copyWith({
    List<PaymentSource>? sources,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) =>
      PaymentSourceState(
        sources: sources ?? this.sources,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : error ?? this.error,
      );
}

class PaymentSourceNotifier extends StateNotifier<PaymentSourceState> {
  final Ref _ref;
  String? _userId;

  PaymentSourceNotifier(this._ref) : super(const PaymentSourceState());

  Future<void> load(String userId) async {
    _userId = userId;
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final sources = await _ref
          .read(paymentSourceRepositoryProvider)
          .getPaymentSources(userId);
      state = state.copyWith(sources: sources, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> create({
    required String name,
    required String type,
    String? accountLast4,
    String? bankName,
    double? creditLimit,
    int? billingCycleDay,
    int? dueDaysAfterBilling,
    required double balance,
  }) async {
    if (_userId == null) return false;
    try {
      final source = await _ref
          .read(paymentSourceRepositoryProvider)
          .createPaymentSource(
            _userId!,
            name: name,
            type: type,
            accountLast4: accountLast4,
            bankName: bankName,
            creditLimit: creditLimit,
            billingCycleDay: billingCycleDay,
            dueDaysAfterBilling: dueDaysAfterBilling,
            balance: balance,
          );
      state = state.copyWith(sources: [source, ...state.sources]);
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
    String? accountLast4,
    String? bankName,
    double? creditLimit,
    int? billingCycleDay,
    int? dueDaysAfterBilling,
    required double balance,
  }) async {
    if (_userId == null) return false;
    try {
      final updated = await _ref
          .read(paymentSourceRepositoryProvider)
          .updatePaymentSource(
            _userId!,
            id,
            name: name,
            type: type,
            accountLast4: accountLast4,
            bankName: bankName,
            creditLimit: creditLimit,
            billingCycleDay: billingCycleDay,
            dueDaysAfterBilling: dueDaysAfterBilling,
            balance: balance,
          );
      state = state.copyWith(
        sources: [
          for (final s in state.sources)
            if (s.id == id) updated else s,
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
      await _ref
          .read(paymentSourceRepositoryProvider)
          .deletePaymentSource(_userId!, id);
      state = state.copyWith(
        sources: state.sources.where((s) => s.id != id).toList(),
      );
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> toggleStatus(String id, {required bool isActive}) async {
    if (_userId == null) return false;
    try {
      final updated = await _ref
          .read(paymentSourceRepositoryProvider)
          .toggleStatus(_userId!, id, isActive: isActive);
      state = state.copyWith(
        sources: [
          for (final s in state.sources)
            if (s.id == id) updated else s,
        ],
      );
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }
}

final paymentSourceProvider =
    StateNotifierProvider<PaymentSourceNotifier, PaymentSourceState>(
  (ref) => PaymentSourceNotifier(ref),
);
