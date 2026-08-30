import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../storage/secure_storage.dart';

class ApiClient {
  static final ApiClient _instance = ApiClient._internal();
  factory ApiClient() => _instance;
  ApiClient._internal();

  final Dio _dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    headers: {'Content-Type': 'application/json'},
  ));

  void _addAuthInterceptor() {
    _dio.interceptors.clear();
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await SecureStorage().getToken();
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        debugPrint('[API] → ${options.method} ${options.path}');
        if (options.data != null) debugPrint('[API]   body: ${options.data}');
        handler.next(options);
      },
      onResponse: (response, handler) {
        debugPrint('[API] ← ${response.statusCode} ${response.requestOptions.path}');
        debugPrint('[API]   data: ${response.data}');
        handler.next(response);
      },
      onError: (error, handler) {
        debugPrint('[API] ✗ ${error.response?.statusCode} ${error.requestOptions.path} — ${error.message}');
        if (error.response?.data != null) debugPrint('[API]   error body: ${error.response?.data}');
        final msg = _extractServerMessage(error.response?.data);
        if (msg != null) {
          handler.reject(DioException(
            requestOptions: error.requestOptions,
            error: msg,
            message: msg,
            response: error.response,
            type: error.type,
          ));
        } else {
          handler.next(error);
        }
      },
    ));
  }

  Future<Map<String, dynamic>> get(String url) async {
    _addAuthInterceptor();
    final res = await _dio.get(url);
    return _unwrap(res.data);
  }

  Future<List<Map<String, dynamic>>> getList(String url) async {
    _addAuthInterceptor();
    final res = await _dio.get(url);
    final raw = res.data;
    List<dynamic> list;
    if (raw is Map && raw.containsKey('data') && raw['data'] is List) {
      list = raw['data'] as List;
    } else if (raw is List) {
      list = raw;
    } else {
      list = [];
    }
    return list.map((e) => Map<String, dynamic>.from(e as Map)).toList();
  }

  Future<Map<String, dynamic>> post(String url, Map<String, dynamic> body) async {
    _addAuthInterceptor();
    final res = await _dio.post(url, data: body);
    return _unwrap(res.data);
  }

  Future<Map<String, dynamic>> put(String url, Map<String, dynamic> body) async {
    _addAuthInterceptor();
    final res = await _dio.put(url, data: body);
    return _unwrap(res.data);
  }

  Future<Map<String, dynamic>> patch(String url, Map<String, dynamic> body) async {
    _addAuthInterceptor();
    final res = await _dio.patch(url, data: body);
    return _unwrap(res.data);
  }

  Future<void> delete(String url) async {
    _addAuthInterceptor();
    await _dio.delete(url);
  }

  String? _extractServerMessage(dynamic body) {
    if (body is Map) {
      return (body['Exception'] ?? body['Message'] ?? body['message'])?.toString();
    }
    return null;
  }

  // .NET backend wraps all responses in { data: ..., hasErrors: bool, message: string }
  Map<String, dynamic> _unwrap(dynamic raw) {
    if (raw is Map<String, dynamic>) {
      if (raw.containsKey('data') && raw['data'] != null) {
        final data = raw['data'];
        if (data is Map<String, dynamic>) return data;
        return {'value': data};
      }
      return raw;
    }
    return {};
  }
}
