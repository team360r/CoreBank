import 'package:drift/drift.dart';

class AccountTable extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get type => text()(); // 'checking' or 'savings'
  RealColumn get balance => real()();
  TextColumn get currency => text().withDefault(const Constant('USD'))();

  @override
  Set<Column> get primaryKey => {id};
}

class TransactionTable extends Table {
  TextColumn get id => text()();
  TextColumn get accountId => text().references(AccountTable, #id)();
  RealColumn get amount => real()();
  TextColumn get description => text()();
  DateTimeColumn get date => dateTime()();
  TextColumn get type => text()(); // 'credit' or 'debit'

  @override
  Set<Column> get primaryKey => {id};
}
