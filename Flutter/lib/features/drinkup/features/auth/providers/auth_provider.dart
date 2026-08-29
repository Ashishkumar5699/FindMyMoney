import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../core/services/fcm_service.dart';
import '../../../core/storage/secure_storage.dart';
import '../services/auth_service.dart';

enum AuthState { unknown, unauthenticated, mpinSetup, needsMpin, authenticated }

void _log(String msg) => debugPrint('[BKC] $msg');

class AuthProvider extends ChangeNotifier {
  final _service = AuthService();
  final _storage = SecureStorage();

  AuthState _state = AuthState.unknown;
  String? _error;
  bool _loading = false;

  AuthState get state => _state;
  String? get error => _error;
  bool get loading => _loading;

  Future<void> checkSession() async {
    _log('checkSession() started');
    final loggedIn = await _storage.isLoggedIn();
    _log('isLoggedIn=$loggedIn');
    if (!loggedIn) {
      _state = AuthState.unauthenticated;
    } else {
      try {
        final status = await _service.getMpinStatus();
        _state = status.isMpinSet ? AuthState.needsMpin : AuthState.mpinSetup;
      } catch (_) {
        _state = AuthState.needsMpin;
      }
    }
    _log('AuthState → $_state');
    notifyListeners();
  }

  Future<void> register({
    required String userName,
    required String displayName,
    required String email,
    required String phone,
    required String password,
  }) async {
    _log('register() userName=$userName');
    _setLoading(true);
    try {
      await _service.register(
        userName: userName,
        displayName: displayName,
        email: email,
        phone: phone,
        password: password,
      );
      _state = AuthState.mpinSetup;
      _error = null;
      _log('register() success → mpinSetup');
    } catch (e) {
      _error = _parseError(e);
      _log('register() error: $_error');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> login(
      {required String userName, required String password}) async {
    _log('login() userName=$userName');
    _setLoading(true);
    try {
      await _service.login(userName: userName, password: password);
      final status = await _service.getMpinStatus();
      _state = status.isMpinSet ? AuthState.needsMpin : AuthState.mpinSetup;
      _error = null;
      _log('login() success → $_state');
    } catch (e) {
      _error = _parseError(e);
      _log('login() error: $_error');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> setMpin(String mpin) async {
    _log('setMpin()');
    _setLoading(true);
    try {
      await _service.setMpin(mpin);
      _state = AuthState.authenticated;
      _error = null;
      _log('setMpin() success → authenticated');
      FcmService().registerToken();
    } catch (e) {
      _error = _parseError(e);
      _log('setMpin() error: $_error');
    } finally {
      _setLoading(false);
    }
  }

  Future<bool> unlockWithBiometrics() async {
    _log('unlockWithBiometrics()');
    _setLoading(true);
    try {
      final success = await _service.authenticateWithBiometrics();
      _log('biometric result=$success');
      if (success) {
        final mpin = await _storage.getMpin();
        if (mpin != null) await _service.verifyMpin(mpin);
        _state = AuthState.authenticated;
        _error = null;
        _log('unlockWithBiometrics() → authenticated');
        FcmService().registerToken();
      }
      return success;
    } catch (e) {
      _error = _parseError(e);
      _log('unlockWithBiometrics() error: $_error');
      return false;
    } finally {
      _setLoading(false);
    }
  }

  Future<void> verifyMpin(String mpin) async {
    _log('verifyMpin()');
    _setLoading(true);
    try {
      await _service.verifyMpin(mpin);
      _state = AuthState.authenticated;
      _error = null;
      _log('verifyMpin() success → authenticated');
      FcmService().registerToken();
    } catch (e) {
      _error = _parseError(e);
      _log('verifyMpin() error: $_error');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> loginWithOtp(String phone, String code) async {
    _log('loginWithOtp() phone=$phone');
    _setLoading(true);
    try {
      await _service.verifyOtp(phone, code);
      final status = await _service.getMpinStatus();
      _state = status.isMpinSet ? AuthState.needsMpin : AuthState.mpinSetup;
      _error = null;
      _log('loginWithOtp() success → $_state');
      FcmService().registerToken();
    } catch (e) {
      _error = _parseError(e);
      _log('loginWithOtp() error: $_error');
    } finally {
      _setLoading(false);
    }
  }

  Future<bool> isBiometricAvailable() => _service.isBiometricAvailable();

  Future<void> logout() async {
    await _service.logout();
    _state = AuthState.unauthenticated;
    notifyListeners();
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }

  void _setLoading(bool val) {
    _loading = val;
    notifyListeners();
  }

  String _parseError(dynamic e) {
    // DioException.message is already the clean server message (set in ApiClient interceptor)
    if (e is DioException && e.message != null && e.message!.isNotEmpty) {
      return e.message!;
    }
    if (e is Exception) return e.toString().replaceAll('Exception: ', '');
    return 'Something went wrong';
  }
}
