import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../data/api_service.dart';
import '../data/models.dart';
import '../widgets/account_card.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({super.key});
  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  late Future<List<Account>> _accountsFuture;
  final _api = ApiService();

  @override
  void initState() { super.initState(); _accountsFuture = _api.getAccounts(); }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Accounts', style: theme.textTheme.headlineMedium)),
      body: FutureBuilder<List<Account>>(
        future: _accountsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) return const Center(child: CircularProgressIndicator());
          if (snapshot.hasError) return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.error_outline, size: 48, color: theme.colorScheme.error),
            const SizedBox(height: 16), Text('Failed to load accounts'),
            OutlinedButton(onPressed: () => setState(() => _accountsFuture = _api.getAccounts()), child: const Text('Retry'))]));
          return ListView.builder(padding: const EdgeInsets.all(16), itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final account = snapshot.data![index];
              return Padding(padding: const EdgeInsets.only(bottom: 12),
                child: AccountCard(account: account, onTap: () => context.go('/accounts/${account.id}')));
            });
        }));
  }
}
