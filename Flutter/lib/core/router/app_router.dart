import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/providers/auth_provider.dart';
import '../../features/auth/screens/login_screen.dart';
import '../../features/auth/screens/register_screen.dart';
import '../../features/dashboard/screens/dashboard_screen.dart';
import '../../features/expenses/screens/expenses_screen.dart';
import '../../features/expenses/screens/add_expense_screen.dart';
import '../../features/incomes/screens/incomes_screen.dart';
import '../../features/incomes/screens/add_income_screen.dart';
import '../../features/emis/screens/emis_screen.dart';
import '../../features/emis/screens/add_emi_screen.dart';
import '../../features/statement/screens/statement_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: '/login',
    redirect: (context, state) {
      final isLoggedIn = authState.isAuthenticated;
      final isAuthRoute = state.matchedLocation == '/login' ||
          state.matchedLocation == '/register';

      if (!isLoggedIn && !isAuthRoute) return '/login';
      if (isLoggedIn && isAuthRoute) return '/dashboard';
      return null;
    },
    routes: [
      GoRoute(path: '/login', builder: (_, _) => const LoginScreen()),
      GoRoute(path: '/register', builder: (_, _) => const RegisterScreen()),
      ShellRoute(
        builder: (context, state, child) =>
            AppShell(location: state.matchedLocation, child: child),
        routes: [
          GoRoute(
            path: '/dashboard',
            builder: (_, _) => const DashboardScreen(),
          ),
          GoRoute(
            path: '/expenses',
            builder: (_, _) => const ExpensesScreen(),
            routes: [
              GoRoute(
                path: 'add',
                builder: (_, _) => const AddExpenseScreen(),
              ),
              GoRoute(
                path: 'edit/:id',
                builder: (_, state) =>
                    AddExpenseScreen(expenseId: state.pathParameters['id']),
              ),
            ],
          ),
          GoRoute(
            path: '/incomes',
            builder: (_, _) => const IncomesScreen(),
            routes: [
              GoRoute(
                path: 'add',
                builder: (_, _) => const AddIncomeScreen(),
              ),
              GoRoute(
                path: 'edit/:id',
                builder: (_, state) =>
                    AddIncomeScreen(incomeId: state.pathParameters['id']),
              ),
            ],
          ),
          GoRoute(
            path: '/emis',
            builder: (_, _) => const EmisScreen(),
            routes: [
              GoRoute(
                path: 'add',
                builder: (_, _) => const AddEmiScreen(),
              ),
              GoRoute(
                path: 'edit/:id',
                builder: (_, state) =>
                    AddEmiScreen(emiId: state.pathParameters['id']),
              ),
            ],
          ),
          GoRoute(
            path: '/statement',
            builder: (_, _) => const StatementScreen(),
          ),
        ],
      ),
    ],
  );
});

class AppShell extends StatelessWidget {
  final Widget child;
  final String location;

  const AppShell({super.key, required this.child, required this.location});

  int _selectedIndex(String loc) {
    if (loc.startsWith('/dashboard')) return 0;
    if (loc.startsWith('/expenses')) return 1;
    if (loc.startsWith('/incomes')) return 2;
    if (loc.startsWith('/emis')) return 3;
    if (loc.startsWith('/statement')) return 4;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final idx = _selectedIndex(location);
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: idx,
        onTap: (i) {
          switch (i) {
            case 0:
              context.go('/dashboard');
            case 1:
              context.go('/expenses');
            case 2:
              context.go('/incomes');
            case 3:
              context.go('/emis');
            case 4:
              context.go('/statement');
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            activeIcon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_down_outlined),
            activeIcon: Icon(Icons.trending_down),
            label: 'Expenses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up_outlined),
            activeIcon: Icon(Icons.trending_up),
            label: 'Income',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_outlined),
            activeIcon: Icon(Icons.credit_card),
            label: 'EMIs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            activeIcon: Icon(Icons.bar_chart),
            label: 'Statement',
          ),
        ],
      ),
    );
  }
}
