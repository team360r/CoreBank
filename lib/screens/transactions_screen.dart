import 'package:flutter/material.dart';
import '../data/api_service.dart';
import '../data/models.dart';
import '../widgets/transaction_tile.dart';

class TransactionsScreen extends StatefulWidget {
  final String accountId;
  const TransactionsScreen({super.key, required this.accountId});
  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  final _api = ApiService();
  late Future<Account> _accountFuture;
  late Future<List<Transaction>> _txFuture;

  @override
  void initState() {
    super.initState();
    _accountFuture = _api.getAccount(widget.accountId);
    _txFuture = _api.getTransactions(widget.accountId);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: FutureBuilder<Account>(future: _accountFuture,
        builder: (ctx, snap) => Text(snap.data?.name ?? 'Loading...'))),
      body: Column(children: [
        FutureBuilder<Account>(future: _accountFuture, builder: (ctx, snap) {
          if (!snap.hasData) return const SizedBox(height: 100);
          return Container(width: double.infinity, padding: const EdgeInsets.all(24),
            color: theme.colorScheme.primaryContainer,
            child: Column(children: [
              Text(snap.data!.formattedBalance, style: theme.textTheme.headlineLarge?.copyWith(color: theme.colorScheme.onPrimaryContainer)),
              const SizedBox(height: 4),
              Text('Available balance', style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onPrimaryContainer.withValues(alpha: 0.7)))]));
        }),
        Expanded(child: FutureBuilder<List<Transaction>>(future: _txFuture, builder: (ctx, snap) {
          if (snap.connectionState == ConnectionState.waiting) return const Center(child: CircularProgressIndicator());
          if (snap.hasError) return Center(child: Text('Error: \${snap.error}'));
          if (snap.data!.isEmpty) return const Center(child: Text('No transactions yet'));
          return ListView.separated(padding: const EdgeInsets.all(16), itemCount: snap.data!.length,
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemBuilder: (ctx, i) => TransactionTile(transaction: snap.data![i]));
        })),
      ]),
    );
  }
}
