import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/api_constants.dart';
import '../../../core/di/providers.dart';
import '../models/card_offer.dart';

class CardOfferState {
  final List<CardOffer> offers;
  final CardSuggestion? suggestion;
  final bool isLoading;
  final bool isSuggesting;
  final String? error;

  const CardOfferState({
    this.offers = const [],
    this.suggestion,
    this.isLoading = false,
    this.isSuggesting = false,
    this.error,
  });

  CardOfferState copyWith({
    List<CardOffer>? offers,
    CardSuggestion? suggestion,
    bool? isLoading,
    bool? isSuggesting,
    String? error,
    bool clearError = false,
    bool clearSuggestion = false,
  }) =>
      CardOfferState(
        offers: offers ?? this.offers,
        suggestion: clearSuggestion ? null : suggestion ?? this.suggestion,
        isLoading: isLoading ?? this.isLoading,
        isSuggesting: isSuggesting ?? this.isSuggesting,
        error: clearError ? null : error ?? this.error,
      );
}

class CardOfferNotifier extends StateNotifier<CardOfferState> {
  final Ref _ref;

  CardOfferNotifier(this._ref) : super(const CardOfferState());

  Dio get _dio => _ref.read(dioProvider);

  Future<void> load(String userId) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final res = await _dio.get(ApiConstants.cardOffers);
      final offers = (res.data as List).map((o) => CardOffer.fromJson(o)).toList();
      state = state.copyWith(offers: offers, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> addOffer(String userId, Map<String, dynamic> data) async {
    try {
      await _dio.post(ApiConstants.cardOffers, data: data);
      await load(userId);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> deleteOffer(String userId, String offerId) async {
    try {
      await _dio.delete(ApiConstants.cardOfferDelete(offerId));
      state = state.copyWith(
          offers: state.offers.where((o) => o.id != offerId).toList());
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> suggestCard(String userId, String category) async {
    state = state.copyWith(isSuggesting: true, clearSuggestion: true, clearError: true);
    try {
      final res = await _dio.get(ApiConstants.cardSuggest(category));
      state = state.copyWith(
          suggestion: CardSuggestion.fromJson(res.data), isSuggesting: false);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        state = state.copyWith(
            isSuggesting: false,
            error: 'No card configured for "$category". Add benefits first.');
      } else {
        state = state.copyWith(isSuggesting: false, error: e.toString());
      }
    }
  }
}

final cardOfferProvider =
    StateNotifierProvider<CardOfferNotifier, CardOfferState>(
        (ref) => CardOfferNotifier(ref));
