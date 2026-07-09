import 'dart:convert';
import 'dart:developer' as dev;
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../core/constants/api_constants.dart';

const _tokenKey = 'auth_token';
const _storage = FlutterSecureStorage();

Dio createDio() {
  final dio = Dio(BaseOptions(
    baseUrl: ApiConstants.baseUrl,
    connectTimeout: const Duration(seconds: 60),
    sendTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    headers: {'Content-Type': 'application/json'},
  ));

  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) async {
      final token = await _storage.read(key: _tokenKey);
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }

      if (kDebugMode) {
        final body =
            options.data != null ? _prettyJson(options.data) : '(no body)';
        dev.log(
          '┌── REQUEST ──────────────────────────────────────────\n'
          '│ ${options.method}  ${options.uri}\n'
          '│ Headers: ${_sanitizeHeaders(options.headers)}\n'
          '│ Body:\n$body\n'
          '└─────────────────────────────────────────────────────',
          name: 'HTTP',
        );
      }

      handler.next(options);
    },
    onResponse: (response, handler) {
      if (kDebugMode) {
        final body = _prettyJson(response.data);
        dev.log(
          '┌── RESPONSE ─────────────────────────────────────────\n'
          '│ ${response.statusCode}  ${response.requestOptions.uri}\n'
          '│ Body:\n$body\n'
          '└─────────────────────────────────────────────────────',
          name: 'HTTP',
        );
      }
      handler.next(response);
    },
    onError: (error, handler) {
      if (kDebugMode) {
        dev.log(
          '┌── ERROR ────────────────────────────────────────────\n'
          '│ ${error.response?.statusCode ?? 'NO STATUS'}  ${error.requestOptions.uri}\n'
          '│ Type: ${error.type}\n'
          '│ Message: ${error.message}\n'
          '│ Response: ${_prettyJson(error.response?.data)}\n'
          '└─────────────────────────────────────────────────────',
          name: 'HTTP',
          error: error,
        );
      }
      handler.next(error);
    },
  ));

  return dio;
}

String _prettyJson(dynamic data) {
  try {
    if (data == null) return '(null)';
    const encoder = JsonEncoder.withIndent('  ');
    if (data is String) {
      final decoded = jsonDecode(data);
      return encoder.convert(decoded);
    }
    return encoder.convert(data);
  } catch (_) {
    return data.toString();
  }
}

Map<String, dynamic> _sanitizeHeaders(Map<String, dynamic> headers) {
  final copy = Map<String, dynamic>.from(headers);
  if (copy.containsKey('Authorization')) {
    copy['Authorization'] = 'Bearer [REDACTED]';
  }
  return copy;
}

Future<void> saveToken(String token) async {
  await _storage.write(key: _tokenKey, value: token);
}

Future<void> clearToken() async {
  await _storage.delete(key: _tokenKey);
}

Future<String?> getToken() async {
  return _storage.read(key: _tokenKey);
}

/// Unwraps { "data": ..., "hasErrors": bool, "message": str } envelope.
/// Throws [Exception] if hasErrors is true.
dynamic unwrap(Response response) {
  final body = response.data;
  if (body is Map<String, dynamic>) {
    if (body['hasErrors'] == true) {
      throw Exception(body['message'] ?? 'Server error');
    }
    return body['data'];
  }
  return body;
}

({String userId, String username, String email, DateTime expiresAt})
    decodeJwt(String token) {
  final parts = token.split('.');
  if (parts.length != 3) {
    throw const FormatException('Invalid JWT format');
  }

  var payload = parts[1];
  // base64url → base64
  payload = payload.replaceAll('-', '+').replaceAll('_', '/');
  final padded = payload.padRight(
    payload.length + (4 - payload.length % 4) % 4,
    '=',
  );

  final json = jsonDecode(utf8.decode(base64.decode(padded)))
      as Map<String, dynamic>;

  final userId = json['nameid'] as String? ?? '';
  final username = json['unique_name'] as String? ?? '';
  final email = json['email'] as String? ?? '';
  final exp = json['exp'] as int? ?? 0;
  final expiresAt =
      DateTime.fromMillisecondsSinceEpoch(exp * 1000, isUtc: true).toLocal();

  return (
    userId: userId,
    username: username,
    email: email,
    expiresAt: expiresAt,
  );
}
