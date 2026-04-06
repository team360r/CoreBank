import 'package:go_router/go_router.dart';
import '../screens/login_screen.dart';
import '../screens/accounts_screen.dart';
import '../screens/transactions_screen.dart';
import '../screens/shell_screen.dart';

final router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/login', name: 'login', builder: (context, state) => const LoginScreen()),
    ShellRoute(
      builder: (context, state, child) => ShellScreen(child: child),
      routes: [
        GoRoute(path: '/accounts', name: 'accounts',
          builder: (context, state) => const AccountsScreen(),
          routes: [
            GoRoute(path: ':id', name: 'transactions',
              builder: (context, state) => TransactionsScreen(accountId: state.pathParameters['id']!)),
          ]),
      ],
    ),
  ],
);
