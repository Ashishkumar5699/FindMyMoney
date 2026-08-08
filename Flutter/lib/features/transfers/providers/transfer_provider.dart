import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/di/providers.dart';
import '../../../domain/models/transfer.dart';

class TransferState {
  final List<Transfer> transfers;
  final bool isLoading;
  final String? error;

  const TransferState({
    this.transfers = const [],
    this.isLoading = false,
    this.error,
  });

  TransferState copyWith({
    List<Transfer>? transfers,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) =>
      TransferState(
        transfers: transfers ?? this.transfers,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : error ?? this.error,
      );
}

class TransferNotifier extends StateNotifier<TransferState> {
  final Ref _ref;
  String? _userId;

  TransferNotifier(this._ref) : super(const TransferState());

  Future<void> load(String userId) async {
    _userId = userId;
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final transfers =
          await _ref.read(transferRepositoryProvider).getTransfers(userId);
      state = state.copyWith(transfers: transfers, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> create({
    required String fromSourceId,
    String? toSourceId,
    required double amount,
    required DateTime date,
    String? notes,
  }) async {
    if (_userId == null) return false;
    try {
      final transfer =
          await _ref.read(transferRepositoryProvider).createTransfer(
                _userId!,
                fromSourceId: fromSourceId,
                toSourceId: toSourceId,
                amount: amount,
                date: date,
                notes: notes,
              );
      state = state.copyWith(transfers: [transfer, ...state.transfers]);
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> update(
    String id, {
    required String fromSourceId,
    String? toSourceId,
    required double amount,
    required DateTime date,
    String? notes,
  }) async {
    if (_userId == null) return false;
    try {
      final updated =
          await _ref.read(transferRepositoryProvider).updateTransfer(
                _userId!,
                id,
                fromSourceId: fromSourceId,
                toSourceId: toSourceId,
                amount: amount,
                date: date,
                notes: notes,
              );
      state = state.copyWith(
        transfers: [
          for (final t in state.transfers)
            if (t.id == id) updated else t,
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
      await _ref.read(transferRepositoryProvider).deleteTransfer(_userId!, id);
      state = state.copyWith(
        transfers: state.transfers.where((t) => t.id != id).toList(),
      );
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }
}

final transferProvider =
    StateNotifierProvider<TransferNotifier, TransferState>(
  (ref) => TransferNotifier(ref),
);
