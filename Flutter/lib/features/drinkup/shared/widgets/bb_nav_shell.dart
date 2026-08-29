import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../features/messages/providers/message_provider.dart';
import '../theme/app_theme.dart';

class BbNavShell extends StatelessWidget {
  final Widget child;
  const BbNavShell({super.key, required this.child});

  int _selectedIndex(BuildContext context) {
    final loc = GoRouterState.of(context).matchedLocation;
    if (loc.startsWith('/plans'))    return 0;
    if (loc.startsWith('/friends'))  return 1;
    if (loc.startsWith('/map'))      return 2;
    if (loc.startsWith('/messages')) return 3;
    if (loc.startsWith('/drinks'))   return 4;
    if (loc.startsWith('/splits'))   return 5;
    if (loc.startsWith('/profile'))  return 6;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final unread = context.watch<MessageProvider>().totalUnread;

    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        backgroundColor: AppTheme.surfaceCard,
        indicatorColor: AppTheme.primary.withValues(alpha: 0.2),
        selectedIndex: _selectedIndex(context),
        onDestinationSelected: (i) {
          switch (i) {
            case 0: context.go('/plans');
            case 1: context.go('/friends');
            case 2: context.go('/map');
            case 3: context.go('/messages');
            case 4: context.go('/drinks');
            case 5: context.go('/splits');
            case 6: context.go('/profile');
          }
        },
        destinations: [
          const NavigationDestination(icon: Icon(Icons.event),        label: 'Plans'),
          const NavigationDestination(icon: Icon(Icons.people),       label: 'Friends'),
          const NavigationDestination(icon: Icon(Icons.map),          label: 'Map'),
          NavigationDestination(
            icon: Badge(
              isLabelVisible: unread > 0,
              label: Text('$unread'),
              child: const Icon(Icons.chat_bubble_outline),
            ),
            label: 'Messages',
          ),
          const NavigationDestination(icon: Icon(Icons.local_bar),    label: 'Drinks'),
          const NavigationDestination(icon: Icon(Icons.receipt_long), label: 'Splits'),
          const NavigationDestination(icon: Icon(Icons.person),       label: 'Profile'),
        ],
      ),
    );
  }
}
