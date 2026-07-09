import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/di/providers.dart';
import '../../../domain/models/user.dart';

class AuthState {
  final AppUser? user;
  final bool isLoading;
  final String? error;

  const AuthState({this.user, this.isLoading = false, this.error});

  bool get isAuthenticated => user != null;

  AuthState copyWith({
    AppUser? user,
    bool? isLoading,
    String? error,
    bool clearUser = false,
    bool clearError = false,
  }) =>
      AuthState(
        user: clearUser ? null : user ?? this.user,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : error ?? this.error,
      );
}

class AuthNotifier extends StateNotifier<AuthState> {
  final Ref _ref;

  AuthNotifier(this._ref) : super(const AuthState()) {
    _checkCurrentUser();
  }

  Future<void> _checkCurrentUser() async {
    state = state.copyWith(isLoading: true);
    try {
      final user =
          await _ref.read(authRepositoryProvider).getCurrentUser();
      state = AuthState(user: user);
    } catch (_) {
      state = const AuthState();
    }
  }

  Future<bool> login(String username, String password) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final user =
          await _ref.read(authRepositoryProvider).login(username, password);
      state = AuthState(user: user);
      return true;
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: _parseError(e),
        clearUser: false,
      );
      return false;
    }
  }

  Future<bool> register(
      String username, String email, String password) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final user = await _ref
          .read(authRepositoryProvider)
          .register(username, email, password);
      state = AuthState(user: user);
      return true;
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: _parseError(e),
        clearUser: false,
      );
      return false;
    }
  }

  Future<void> logout() async {
    await _ref.read(authRepositoryProvider).logout();
    state = const AuthState();
  }

  String _parseError(Object e) {
    final msg = e.toString();
    if (msg.contains('Exception:')) {
      return msg.replaceFirst('Exception: ', '');
    }
    if (msg.contains('401')) return 'Invalid username or password';
    if (msg.contains('400')) return 'Invalid request. Check your inputs.';
    if (msg.contains('SocketException') || msg.contains('connection')) {
      return 'No internet connection';
    }
    return 'Something went wrong. Please try again.';
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(ref),
);
