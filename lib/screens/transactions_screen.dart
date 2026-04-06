import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../data/models.dart';

class TransactionsScreen extends StatelessWidget {
  final String accountId;
  const TransactionsScreen({super.key, required this.accountId});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final account = mockAccounts.where((a) => a.id == accountId).firstOrNull;
    final transactions = mockTransactions[accountId] ?? [];
    return Scaffold(
      appBar: AppBar(title: Text(account?.name ?? 'Transactions')),
      body: Column(children: [
        if (account != null)
          Container(width: double.infinity, padding: const EdgeInsets.all(24),
            color: theme.colorScheme.primaryContainer,
            child: Column(children: [
              Text(account.formattedBalance, style: theme.textTheme.headlineLarge?.copyWith(color: theme.colorScheme.onPrimaryContainer)),
              const SizedBox(height: 4),
              Text('Available balance', style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onPrimaryContainer.withValues(alpha: 0.7))),
            ])),
        Expanded(child: transactions.isEmpty
          ? const Center(child: Text('No transactions yet'))
          : ListView.separated(
              padding: const EdgeInsets.all(16), itemCount: transactions.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final tx = transactions[index];
                final isCredit = tx.type == TransactionType.credit;
                return ListTile(
                  leading: Icon(isCredit ? Icons.arrow_downward : Icons.arrow_upward, color: isCredit ? Colors.green : null),
                  title: Text(tx.description),
                  trailing: Text(tx.formattedAmount, style: TextStyle(color: isCredit ? Colors.green.shade700 : null, fontWeight: FontWeight.w600)));
              })),
      ]),
    );
  }
}
