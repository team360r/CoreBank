import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flightbank/app.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('login flow navigates to accounts', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: FlightBankApp()));
    await tester.pumpAndSettle();
    expect(find.text('FlightBank'), findsOneWidget);
    expect(find.text('Sign In'), findsOneWidget);

    await tester.enterText(find.widgetWithText(TextFormField, 'Email'), 'test@example.com');
    await tester.enterText(find.widgetWithText(TextFormField, 'Password'), 'password123');
    await tester.tap(find.text('Sign In'));
    await tester.pumpAndSettle(const Duration(seconds: 2));
    expect(find.text('Accounts'), findsOneWidget);
  });
}
