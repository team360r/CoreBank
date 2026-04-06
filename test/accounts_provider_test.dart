import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flightbank/providers/accounts_provider.dart';
import 'package:flightbank/data/models.dart';

void main() {
  group('accountsProvider', () {
    test('returns a list of accounts', () async {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final accounts = await container.read(accountsProvider.future);
      expect(accounts, isA<List<Account>>());
      expect(accounts.length, 3);
    });

    test('transactionsProvider returns transactions', () async {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final tx = await container.read(transactionsProvider('acc-1').future);
      expect(tx, isA<List<Transaction>>());
      expect(tx.isNotEmpty, true);
    });
  });
}
