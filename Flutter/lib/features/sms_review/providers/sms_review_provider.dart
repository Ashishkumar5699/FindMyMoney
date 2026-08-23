import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/services/sms_pending_db.dart';
import '../../../domain/models/sms_transaction.dart';

class SmsReviewState {
  final List<SmsTransaction> pending;
  final bool isLoading;

  const SmsReviewState({this.pending = const [], this.isLoading = false});

  SmsReviewState copyWith({List<SmsTransaction>? pending, bool? isLoading}) =>
      SmsReviewState(
        pending: pending ?? this.pending,
        isLoading: isLoading ?? this.isLoading,
      );
}

class SmsReviewNotifier extends StateNotifier<SmsReviewState> {
  SmsReviewNotifier() : super(const SmsReviewState());

  Future<void> load() async {
    state = state.copyWith(isLoading: true);
    final pending = await SmsPendingDb.instance.getPending();
    state = state.copyWith(pending: pending, isLoading: false);
  }

  Future<void> dismiss(String id) async {
    await SmsPendingDb.instance.delete(id);
    state = state.copyWith(
      pending: state.pending.where((t) => t.id != id).toList(),
    );
  }
}

final smsReviewProvider =
    StateNotifierProvider<SmsReviewNotifier, SmsReviewState>(
  (ref) => SmsReviewNotifier(),
);

final smsPendingCountProvider = FutureProvider<int>(
  (_) => SmsPendingDb.instance.count(),
);
