import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'data/api/api_client.dart';
import 'data/services/health_service.dart';
import 'features/drinkup/core/services/fcm_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Firebase — requires google-services.json in android/app/
  try {
    await Firebase.initializeApp();
    await FcmService().init();
  } catch (e) {
    debugPrint('[Firebase] Not configured — FCM disabled: $e');
  }

  HealthService(createDio()).bootPing();

  runApp(const ProviderScope(child: FindMyMoneyApp()));
}

class FindMyMoneyApp extends ConsumerWidget {
  const FindMyMoneyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'FindMyMoney',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      routerConfig: router,
    );
  }
}
