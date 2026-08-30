import 'package:local_auth/local_auth.dart';
import '../../../core/api/api_client.dart';
import '../../../core/api/api_endpoints.dart';
import '../../../core/storage/secure_storage.dart';
import '../models/auth_models.dart';

class AuthService {
  final _api     = ApiClient();
  final _storage = SecureStorage();
  final _localAuth = LocalAuthentication();

  Future<AuthResult> register({
    required String userName,
    required String displayName,
    required String email,
    required String phone,
    required String password,
  }) async {
    final data = await _api.post(ApiEndpoints.register, {
      'userName':    userName,
      'displayName': displayName,
      'email':       email,
      'phone':       phone,
      'password':    password,
    });
    final result = AuthResult.fromJson(data);
    await _saveSession(result);
    return result;
  }

  Future<AuthResult> login({
    required String userName,
    required String password,
  }) async {
    final data = await _api.post(ApiEndpoints.login, {
      'userName': userName,
      'password': password,
    });
    final result = AuthResult.fromJson(data);
    await _saveSession(result);
    return result;
  }

  Future<void> setMpin(String mpin) async {
    await _api.post(ApiEndpoints.setMpin, {'mpin': mpin});
    await _storage.saveMpin(mpin);
  }

  Future<AuthResult> verifyMpin(String mpin) async {
    final data = await _api.post(ApiEndpoints.verifyMpin, {'mpin': mpin});
    final result = AuthResult.fromJson(data);
    await _storage.saveToken(result.token);
    return result;
  }

  Future<MpinStatus> getMpinStatus() async {
    final data = await _api.get(ApiEndpoints.mpinStatus);
    return MpinStatus.fromJson(data);
  }

  // Returns true if biometric auth succeeded
  Future<bool> authenticateWithBiometrics() async {
    final canCheck = await _localAuth.canCheckBiometrics;
    final isAvailable = await _localAuth.isDeviceSupported();
    if (!canCheck || !isAvailable) return false;

    return await _localAuth.authenticate(
      localizedReason: 'Unlock BKC',
      options: const AuthenticationOptions(
        biometricOnly: false,
        stickyAuth: true,
      ),
    );
  }

  Future<bool> isBiometricAvailable() async {
    final canCheck = await _localAuth.canCheckBiometrics;
    if (!canCheck) return false;
    final biometrics = await _localAuth.getAvailableBiometrics();
    return biometrics.isNotEmpty;
  }

  Future<String?> sendOtp(String phone) async {
    final data = await _api.post(ApiEndpoints.sendOtp, {'phone': phone});
    return data['devCode'] as String?;
  }

  Future<AuthResult> verifyOtp(String phone, String code) async {
    final data = await _api.post(ApiEndpoints.verifyOtp, {'phone': phone, 'code': code});
    final result = AuthResult.fromJson(data);
    await _saveSession(result);
    return result;
  }

  Future<void> logout() async {
    await _storage.clearAll();
  }

  Future<void> _saveSession(AuthResult result) async {
    await _storage.saveToken(result.token);
    await _storage.saveAccountId(result.accountId);
    await _storage.saveUserName(result.userName);
  }
}
