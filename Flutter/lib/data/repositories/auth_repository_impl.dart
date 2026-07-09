import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../core/constants/api_constants.dart';
import '../../domain/models/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../api/api_client.dart';

class AuthRepositoryImpl implements AuthRepository {
  final Dio _dio;

  AuthRepositoryImpl(this._dio);

  @override
  Future<AppUser> login(String username, String password) async {
    final response = await _dio.post(
      ApiConstants.login,
      data: {'username': username, 'password': password},
    );

    final body = response.data as Map<String, dynamic>;
    if (body['hasErrors'] == true) {
      throw Exception(body['message'] ?? 'Login failed');
    }

    final data = body['data'] as Map<String, dynamic>;
    final token = data['token'] as String;

    final claims = decodeJwt(token);
    final user = AppUser(
      id: claims.userId,
      username: claims.username.isNotEmpty
          ? claims.username
          : data['username'] as String? ?? username,
      email: claims.email.isNotEmpty
          ? claims.email
          : data['email'] as String? ?? '',
      token: token,
      expiresAt: claims.expiresAt,
    );

    await saveToken(token);
    await _persistUser(user);
    return user;
  }

  @override
  Future<AppUser> register(
      String username, String email, String password) async {
    final response = await _dio.post(
      ApiConstants.register,
      data: {'username': username, 'email': email, 'password': password},
    );

    final body = response.data as Map<String, dynamic>;
    if (body['hasErrors'] == true) {
      throw Exception(body['message'] ?? 'Registration failed');
    }

    final data = body['data'] as Map<String, dynamic>;
    final token = data['token'] as String;

    final claims = decodeJwt(token);
    final user = AppUser(
      id: claims.userId,
      username: claims.username.isNotEmpty ? claims.username : username,
      email: claims.email.isNotEmpty ? claims.email : email,
      token: token,
      expiresAt: claims.expiresAt,
    );

    await saveToken(token);
    await _persistUser(user);
    return user;
  }

  @override
  Future<void> logout() async {
    await clearToken();
    await _clearUser();
  }

  @override
  Future<AppUser?> getCurrentUser() async {
    final token = await getToken();
    if (token == null) return null;

    try {
      final claims = decodeJwt(token);
      if (DateTime.now().isAfter(claims.expiresAt)) {
        await clearToken();
        return null;
      }
      final json = await _loadUser();
      if (json == null) return null;
      return AppUser.fromJson(json);
    } catch (_) {
      return null;
    }
  }

  Future<void> _persistUser(AppUser user) async {
    final storage = _UserStorage();
    await storage.save(user.toJson());
  }

  Future<Map<String, dynamic>?> _loadUser() async {
    final storage = _UserStorage();
    return storage.load();
  }

  Future<void> _clearUser() async {
    final storage = _UserStorage();
    await storage.clear();
  }
}

// Simple JSON-in-secure-storage user persistence
class _UserStorage {
  static const _key = 'current_user';
  final _s = const FlutterSecureStorage();

  Future<void> save(Map<String, dynamic> json) async =>
      _s.write(key: _key, value: jsonEncode(json));

  Future<Map<String, dynamic>?> load() async {
    final raw = await _s.read(key: _key);
    if (raw == null) return null;
    return jsonDecode(raw) as Map<String, dynamic>;
  }

  Future<void> clear() async => _s.delete(key: _key);
}
