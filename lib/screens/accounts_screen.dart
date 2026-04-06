import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../data/models.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Accounts')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: mockAccounts.length,
        itemBuilder: (context, index) {
          final account = mockAccounts[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Icon(
                account.type == AccountType.checking
                    ? Icons.account_balance : Icons.savings,
                color: theme.colorScheme.primary),
              title: Text(account.name),
              subtitle: Text(account.type.name),
              trailing: Text(account.formattedBalance,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold))));
        },
      ),
    );
  }
}
