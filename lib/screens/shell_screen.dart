import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShellScreen extends StatelessWidget {
  final Widget child;
  const ShellScreen({super.key, required this.child});
  int _currentIndex(BuildContext context) {
    final loc = GoRouterState.of(context).matchedLocation;
    if (loc.startsWith('/accounts')) return 0;
    if (loc == '/settings') return 1;
    return 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: child, bottomNavigationBar: NavigationBar(
      selectedIndex: _currentIndex(context),
      onDestinationSelected: (i) { switch (i) { case 0: context.go('/accounts'); case 1: context.go('/settings'); } },
      destinations: const [
        NavigationDestination(icon: Icon(Icons.account_balance_outlined), selectedIcon: Icon(Icons.account_balance), label: 'Accounts'),
        NavigationDestination(icon: Icon(Icons.settings_outlined), selectedIcon: Icon(Icons.settings), label: 'Settings'),
      ]));
  }
}
