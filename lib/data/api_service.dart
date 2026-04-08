/// Simulated API service for CoreBank.
/// In a real app, this would make HTTP requests to a backend.
import 'dart:async';
import 'models.dart';
import 'mock_data.dart';

class ApiService {
  /// Simulate network delay.
  Future<T> _simulate<T>(T data, {int delayMs = 800}) async {
    await Future.delayed(Duration(milliseconds: delayMs));
    return data;
  }

  Future<User> getCurrentUser() => _simulate(mockUser);

  Future<List<Account>> getAccounts() => _simulate(mockAccounts);

  Future<Account> getAccount(String id) => _simulate(
        mockAccounts.firstWhere((a) => a.id == id),
      );

  Future<List<Transaction>> getTransactions(String accountId) => _simulate(
        mockTransactions[accountId] ?? [],
      );

  Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 1200));
    // Accept any non-empty credentials for the tutorial
    return email.isNotEmpty && password.isNotEmpty;
  }

  Future<bool> transfer({
    required String fromAccountId,
    required String toAccountId,
    required double amount,
    String? note,
  }) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    // Always succeed in the tutorial
    return true;
  }
}
