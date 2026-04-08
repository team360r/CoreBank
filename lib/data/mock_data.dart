/// Mock data for CoreBank — used before API integration.
import 'models.dart';

const mockUser = User(
  id: 'user-1',
  name: 'Alex Johnson',
  email: 'alex@corebank.dev',
);

final mockAccounts = [
  const Account(
    id: 'acc-1',
    name: 'Main Checking',
    type: AccountType.checking,
    balance: 4825.67,
  ),
  const Account(
    id: 'acc-2',
    name: 'Savings',
    type: AccountType.savings,
    balance: 12340.00,
  ),
  const Account(
    id: 'acc-3',
    name: 'Travel Fund',
    type: AccountType.savings,
    balance: 2150.50,
  ),
];

final mockTransactions = <String, List<Transaction>>{
  'acc-1': [
    Transaction(
      id: 'tx-1',
      accountId: 'acc-1',
      amount: 3200.00,
      description: 'Salary deposit',
      date: DateTime(2026, 4, 1),
      type: TransactionType.credit,
    ),
    Transaction(
      id: 'tx-2',
      accountId: 'acc-1',
      amount: 85.50,
      description: 'Grocery store',
      date: DateTime(2026, 4, 2),
      type: TransactionType.debit,
    ),
    Transaction(
      id: 'tx-3',
      accountId: 'acc-1',
      amount: 45.00,
      description: 'Gas station',
      date: DateTime(2026, 4, 3),
      type: TransactionType.debit,
    ),
    Transaction(
      id: 'tx-4',
      accountId: 'acc-1',
      amount: 120.00,
      description: 'Electric bill',
      date: DateTime(2026, 4, 3),
      type: TransactionType.debit,
    ),
    Transaction(
      id: 'tx-5',
      accountId: 'acc-1',
      amount: 250.00,
      description: 'Transfer from Savings',
      date: DateTime(2026, 3, 28),
      type: TransactionType.credit,
    ),
  ],
  'acc-2': [
    Transaction(
      id: 'tx-6',
      accountId: 'acc-2',
      amount: 500.00,
      description: 'Monthly auto-save',
      date: DateTime(2026, 4, 1),
      type: TransactionType.credit,
    ),
    Transaction(
      id: 'tx-7',
      accountId: 'acc-2',
      amount: 250.00,
      description: 'Transfer to Checking',
      date: DateTime(2026, 3, 28),
      type: TransactionType.debit,
    ),
  ],
  'acc-3': [
    Transaction(
      id: 'tx-8',
      accountId: 'acc-3',
      amount: 150.00,
      description: 'Travel fund deposit',
      date: DateTime(2026, 4, 1),
      type: TransactionType.credit,
    ),
  ],
};
