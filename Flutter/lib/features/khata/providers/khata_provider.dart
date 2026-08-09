import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/di/providers.dart';
import '../../../domain/models/khata_contact.dart';

class KhataState {
  final List<KhataContact> contacts;
  final bool isLoading;
  final String? error;

  const KhataState({this.contacts = const [], this.isLoading = false, this.error});

  KhataState copyWith({List<KhataContact>? contacts, bool? isLoading, String? error, bool clearError = false}) =>
      KhataState(
        contacts: contacts ?? this.contacts,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : error ?? this.error,
      );
}

class KhataNotifier extends StateNotifier<KhataState> {
  final Ref _ref;
  String? _userId;

  KhataNotifier(this._ref) : super(const KhataState());

  Future<void> load(String userId) async {
    _userId = userId;
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final contacts = await _ref.read(khataRepositoryProvider).getContacts(userId);
      state = state.copyWith(contacts: contacts, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> createContact({required String name, String? notes}) async {
    if (_userId == null) return false;
    try {
      final contact = await _ref.read(khataRepositoryProvider).createContact(_userId!, name: name, notes: notes);
      state = state.copyWith(contacts: [contact, ...state.contacts]);
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> deleteContact(String contactId) async {
    if (_userId == null) return false;
    try {
      await _ref.read(khataRepositoryProvider).deleteContact(_userId!, contactId);
      state = state.copyWith(contacts: state.contacts.where((c) => c.id != contactId).toList());
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> settle(String contactId) async {
    if (_userId == null) return false;
    try {
      final updated = await _ref.read(khataRepositoryProvider).settle(_userId!, contactId);
      state = state.copyWith(contacts: [for (final c in state.contacts) if (c.id == contactId) updated else c]);
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  void updateContactBalance(KhataContact updated) {
    state = state.copyWith(contacts: [for (final c in state.contacts) if (c.id == updated.id) updated else c]);
  }
}

final khataProvider = StateNotifierProvider<KhataNotifier, KhataState>((ref) => KhataNotifier(ref));
