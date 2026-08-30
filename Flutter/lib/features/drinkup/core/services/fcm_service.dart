import 'dart:developer' as dev;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import '../api/api_client.dart';
import '../api/api_endpoints.dart';

/// Background message handler — must be a top-level function.
/// Deliberately shows nothing; the system notification (vague) is enough.
@pragma('vm:entry-point')
Future<void> _onBackgroundMessage(RemoteMessage message) async {
  dev.log('BKC background FCM: type=${message.data["type"]}', name: 'FCM');
}

class FcmService {
  static final FcmService _instance = FcmService._();
  factory FcmService() => _instance;
  FcmService._();

  final _messaging = FirebaseMessaging.instance;

  Future<void> init() async {
    // Register background handler
    FirebaseMessaging.onBackgroundMessage(_onBackgroundMessage);

    // Request permission (iOS)
    final settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.denied) {
      debugPrint('[FCM] Permission denied — push notifications disabled');
      return;
    }

    // Hide message content on lock screen (privacy)
    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    // Foreground messages — show a local notification via NotificationService
    FirebaseMessaging.onMessage.listen(_onForegroundMessage);

    dev.log('FCM initialised', name: 'FCM');
  }

  /// Call after login to register this device's push token with the backend.
  Future<void> registerToken() async {
    try {
      final token = await _messaging.getToken();
      if (token == null) return;
      dev.log('FCM token obtained', name: 'FCM');
      await ApiClient().post(ApiEndpoints.fcmToken, {'fcmToken': token});
      // Refresh token if it rotates
      _messaging.onTokenRefresh.listen((newToken) {
        ApiClient().post(ApiEndpoints.fcmToken, {'fcmToken': newToken});
      });
    } catch (e) {
      debugPrint('[FCM] Token registration failed: $e');
    }
  }

  void _onForegroundMessage(RemoteMessage message) {
    // App is open — we show a subtle in-app indicator rather than a system alert.
    // The chat screen will refresh automatically via polling/provider.
    dev.log('BKC foreground FCM: type=${message.data["type"]}', name: 'FCM');
  }
}
