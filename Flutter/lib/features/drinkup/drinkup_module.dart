import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'features/auth/providers/auth_provider.dart';
import 'features/profile/providers/profile_provider.dart';
import 'features/friends/providers/friend_provider.dart';
import 'features/plans/providers/plan_provider.dart';
import 'features/splits/providers/split_provider.dart';
import 'features/map/providers/location_provider.dart';
import 'features/messages/providers/message_provider.dart';
import 'features/messages/screens/chats_screen.dart';
import 'features/auth/screens/login_screen.dart';
import 'features/auth/screens/mpin_unlock_screen.dart';
import 'features/auth/screens/register_screen.dart';
import 'features/auth/screens/set_mpin_screen.dart';
import 'features/auth/screens/otp_login_screen.dart';
import 'features/plans/screens/plans_screen.dart';
import 'features/friends/screens/friends_screen.dart';
import 'features/splits/screens/splits_screen.dart';
import 'features/profile/screens/profile_screen.dart';
import 'features/map/screens/map_screen.dart';
import 'features/drinks/screens/drinks_screen.dart';
import 'shared/theme/app_theme.dart';
import 'shared/widgets/bb_nav_shell.dart';

class BkcApp extends StatelessWidget {
  const BkcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
        ChangeNotifierProvider(create: (_) => FriendProvider()),
        ChangeNotifierProvider(create: (_) => PlanProvider()),
        ChangeNotifierProvider(create: (_) => SplitProvider()),
        ChangeNotifierProvider(create: (_) => LocationProvider()),
        ChangeNotifierProvider(create: (_) => MessageProvider()),
      ],
      child: Builder(
        builder: (context) {
          final router = _buildRouter(context);
          return MaterialApp.router(
            title: 'BKC',
            theme: AppTheme.dark,
            routerConfig: router,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }

  GoRouter _buildRouter(BuildContext context) => GoRouter(
        initialLocation: '/splash',
        redirect: (context, state) {
          final auth = context.read<AuthProvider>();
          final loc = state.matchedLocation;

          if (loc == '/splash') {
            if (auth.state == AuthState.unknown) return null;
            if (auth.state == AuthState.unauthenticated) return '/login';
            if (auth.state == AuthState.mpinSetup) return '/set-mpin';
            if (auth.state == AuthState.needsMpin) return '/unlock';
            if (auth.state == AuthState.authenticated) return '/plans';
            return null;
          }

          if (auth.state == AuthState.authenticated) {
            const authScreens = [
              '/login',
              '/register',
              '/otp-login',
              '/set-mpin',
              '/unlock',
              '/splash'
            ];
            if (authScreens.contains(loc)) return '/plans';
            return null;
          }
          if (auth.state == AuthState.unauthenticated &&
              loc != '/login' &&
              loc != '/register' &&
              loc != '/otp-login') {
            return '/login';
          }
          if (auth.state == AuthState.mpinSetup && loc != '/set-mpin') {
            return '/set-mpin';
          }
          if (auth.state == AuthState.needsMpin && loc != '/unlock') {
            return '/unlock';
          }
          return null;
        },
        refreshListenable: context.read<AuthProvider>(),
        routes: [
          GoRoute(path: '/splash', builder: (_, __) => const _SplashScreen()),
          GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),
          GoRoute(
              path: '/register', builder: (_, __) => const RegisterScreen()),
          GoRoute(path: '/set-mpin', builder: (_, __) => const SetMpinScreen()),
          GoRoute(
              path: '/unlock', builder: (_, __) => const MpinUnlockScreen()),
          GoRoute(path: '/otp-login', builder: (_, __) => const OtpLoginScreen()),
          ShellRoute(
            builder: (_, __, child) => BbNavShell(child: child),
            routes: [
              GoRoute(path: '/plans', builder: (_, __) => const PlansScreen()),
              GoRoute(
                  path: '/friends', builder: (_, __) => const FriendsScreen()),
              GoRoute(path: '/map',      builder: (_, __) => const MapScreen()),
              GoRoute(path: '/messages', builder: (_, __) => const ChatsScreen()),
              GoRoute(path: '/drinks', builder: (_, __) => const DrinksScreen()),
              GoRoute(
                  path: '/splits', builder: (_, __) => const SplitsScreen()),
              GoRoute(
                  path: '/profile', builder: (_, __) => const ProfileScreen()),
            ],
          ),
        ],
      );
}

class _SplashScreen extends StatefulWidget {
  const _SplashScreen();

  @override
  State<_SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<_SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AuthProvider>().checkSession();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('🍻', style: TextStyle(fontSize: 72)),
            SizedBox(height: 16),
            Text('BKC',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    color: AppTheme.primary)),
          ],
        ),
      ),
    );
  }
}
