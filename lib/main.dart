import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pnjb_common/pnjb_common.dart';
import 'core/constants/api_constants.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Wake Azure backend — fire-and-forget, never blocks the UI
  HealthService(baseUrl: ApiConstants.baseUrl).bootPing();

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
