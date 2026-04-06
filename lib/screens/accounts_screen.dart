import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../data/mock_data.dart';
import '../widgets/account_card.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Accounts', style: Theme.of(context).textTheme.headlineMedium)),
      body: ListView.builder(padding: const EdgeInsets.all(16), itemCount: mockAccounts.length,
        itemBuilder: (context, index) {
          final account = mockAccounts[index];
          return Padding(padding: const EdgeInsets.only(bottom: 12),
            child: AccountCard(account: account, onTap: () => context.go('/accounts/${account.id}')));
        }));
  }
}
