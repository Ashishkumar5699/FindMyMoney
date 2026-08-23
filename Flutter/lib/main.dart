import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'data/api/api_client.dart';
import 'data/services/health_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

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
