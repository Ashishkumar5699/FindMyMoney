import 'dart:developer' as dev;
import 'package:dio/dio.dart';
import '../../core/constants/api_constants.dart';

class HealthService {
  final Dio _dio;

  HealthService(this._dio);

  /// Fire-and-forget boot ping — wakes the Azure backend without blocking the UI.
  void bootPing() {
    _ping().catchError((_) {});
  }

  Future<void> _ping() async {
    dev.log('Pinging backend to wake from cold-start…', name: 'Health');
    try {
      final response = await _dio.get(
        ApiConstants.health,
        options: Options(
          sendTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          validateStatus: (status) => status != null && status < 600,
        ),
      );

      if (response.statusCode != null && response.statusCode! < 400) {
        final body = response.data as Map<String, dynamic>?;
        final data = (body?['data'] ?? body) as Map<String, dynamic>?;
        final version = data?['version'] as String? ?? 'unknown';
        dev.log('Backend healthy — version $version ✅', name: 'Health');
      } else {
        dev.log('⚠️ Backend unreachable on startup', name: 'Health');
      }
    } on DioException catch (e) {
      dev.log('Health ping failed: ${e.type}', name: 'Health');
    }
  }
}
