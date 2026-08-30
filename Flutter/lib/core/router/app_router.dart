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
import '../../features/investments/screens/investments_screen.dart';
import '../../features/investments/screens/add_investment_screen.dart';
import '../../features/payment_sources/screens/payment_sources_screen.dart';
import '../../features/payment_sources/screens/add_payment_source_screen.dart';
import '../../features/categories/screens/categories_screen.dart';
import '../../features/transfers/screens/transfers_screen.dart';
import '../../features/transfers/screens/add_transfer_screen.dart';
import '../../features/cc_bills/screens/cc_bills_screen.dart';
import '../../features/loans/screens/loans_screen.dart';
import '../../features/loans/screens/add_loan_screen.dart';
import '../../features/more/screens/more_screen.dart';
import '../../features/khata/screens/khata_screen.dart';
import '../../features/settings/screens/settings_screen.dart';
import '../../features/loans_emis/screens/loans_emis_screen.dart';
import '../../features/ai_chat/screens/ai_chat_screen.dart';
import '../../features/sms_review/screens/sms_review_screen.dart';
import '../../features/peer_loans/models/peer_loan.dart';
import '../../features/peer_loans/screens/peer_loans_screen.dart';
import '../../features/peer_loans/screens/create_peer_loan_screen.dart';
import '../../features/peer_loans/screens/show_token_screen.dart';
import '../../features/peer_loans/screens/show_repayment_token_screen.dart';
import '../../features/peer_loans/screens/verify_loan_screen.dart';
import '../../features/peer_loans/screens/confirm_loan_screen.dart';
import '../../features/peer_loans/screens/peer_loan_detail_screen.dart';

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
            path: '/cc-bills',
            builder: (_, _) => const CcBillsScreen(),
          ),
          GoRoute(
            path: '/more',
            builder: (_, _) => const MoreScreen(),
          ),
          // Routes accessible from More screen (not in bottom nav)
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
          GoRoute(
            path: '/investments',
            builder: (_, _) => const InvestmentsScreen(),
            routes: [
              GoRoute(
                path: 'add',
                builder: (_, _) => const AddInvestmentScreen(),
              ),
              GoRoute(
                path: 'edit/:id',
                builder: (_, state) => AddInvestmentScreen(
                    investmentId: state.pathParameters['id']),
              ),
            ],
          ),
          GoRoute(
            path: '/payment-sources',
            builder: (_, _) => const PaymentSourcesScreen(),
            routes: [
              GoRoute(
                path: 'add',
                builder: (_, _) => const AddPaymentSourceScreen(),
              ),
              GoRoute(
                path: 'edit/:id',
                builder: (_, state) => AddPaymentSourceScreen(
                    sourceId: state.pathParameters['id']),
              ),
            ],
          ),
          GoRoute(
            path: '/categories',
            builder: (_, _) => const CategoriesScreen(),
          ),
          GoRoute(
            path: '/transfers',
            builder: (_, _) => const TransfersScreen(),
            routes: [
              GoRoute(
                path: 'add',
                builder: (_, _) => const AddTransferScreen(),
              ),
              GoRoute(
                path: 'edit/:id',
                builder: (_, state) => AddTransferScreen(
                    transferId: state.pathParameters['id']),
              ),
            ],
          ),
          GoRoute(
            path: '/loans',
            builder: (_, _) => const LoansScreen(),
            routes: [
              GoRoute(
                path: 'add',
                builder: (_, _) => const AddLoanScreen(),
              ),
              GoRoute(
                path: 'edit/:id',
                builder: (_, state) =>
                    AddLoanScreen(loanId: state.pathParameters['id']),
              ),
            ],
          ),
          GoRoute(
            path: '/khata',
            builder: (_, _) => const KhataScreen(),
          ),
          GoRoute(
            path: '/settings',
            builder: (_, _) => const SettingsScreen(),
          ),
          GoRoute(
            path: '/loans-emis',
            builder: (_, _) => const LoansEmisScreen(),
          ),
          GoRoute(
            path: '/ai-chat',
            builder: (_, _) => const AiChatScreen(),
          ),
          GoRoute(
            path: '/sms-review',
            builder: (_, _) => const SmsReviewScreen(),
          ),
          GoRoute(
            path: '/peer-loans',
            builder: (_, _) => const PeerLoansScreen(),
            routes: [
              GoRoute(
                path: 'create',
                builder: (_, _) => const CreatePeerLoanScreen(),
              ),
              GoRoute(
                path: 'show-token',
                builder: (_, state) =>
                    ShowTokenScreen(loan: state.extra as PeerLoan),
              ),
              GoRoute(
                path: 'show-repayment-token',
                builder: (_, state) => ShowRepaymentTokenScreen(
                    repayment: state.extra as PeerLoanRepayment),
              ),
              GoRoute(
                path: 'verify',
                builder: (_, _) => const VerifyLoanScreen(),
              ),
              GoRoute(
                path: 'confirm',
                builder: (_, state) {
                  final args = state.extra as Map<String, dynamic>;
                  return ConfirmLoanScreen(
                    token: args['token'] as String,
                    preview: args['preview'] as PeerLoanPreview,
                  );
                },
              ),
              GoRoute(
                path: ':id',
                builder: (_, state) =>
                    PeerLoanDetailScreen(loan: state.extra as PeerLoan),
              ),
            ],
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
    if (loc.startsWith('/cc-bills')) return 3;
    if (loc.startsWith('/more')) return 4;
    // Sub-pages reached from More still highlight More tab
    return 4;
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
              context.go('/cc-bills');
            case 4:
              context.go('/more');
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
            label: 'CC Bills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            activeIcon: Icon(Icons.grid_view),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
