import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static final SecureStorage _instance = SecureStorage._internal();
  factory SecureStorage() => _instance;
  SecureStorage._internal();

  final _storage = const FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
  );

  static const _tokenKey     = 'bb_token';
  static const _accountIdKey = 'bb_account_id';
  static const _userNameKey  = 'bb_username';
  static const _mpinKey      = 'bb_mpin';
Future<void>    saveToken(String token)      => _storage.write(key: _tokenKey, value: token);
  Future<String?> getToken()                   => _storage.read(key: _tokenKey);
  Future<void>    deleteToken()                => _storage.delete(key: _tokenKey);

  Future<void>    saveAccountId(String id)     => _storage.write(key: _accountIdKey, value: id);
  Future<String?> getAccountId()               => _storage.read(key: _accountIdKey);

  Future<void>    saveUserName(String name)    => _storage.write(key: _userNameKey, value: name);
  Future<String?> getUserName()               => _storage.read(key: _userNameKey);

  // MPIN stored locally for biometric fallback — also verified server-side
  Future<void>    saveMpin(String mpin)        => _storage.write(key: _mpinKey, value: mpin);
  Future<String?> getMpin()                    => _storage.read(key: _mpinKey);
  Future<void>    deleteMpin()                 => _storage.delete(key: _mpinKey);

  Future<void> clearAll() => _storage.deleteAll();

  Future<bool> isLoggedIn() async => (await getToken()) != null;
}
