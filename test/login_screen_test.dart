import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flightbank/screens/login_screen.dart';

void main() {
  group('LoginScreen', () {
    testWidgets('renders email and password fields', (tester) async {
      await tester.pumpWidget(const ProviderScope(child: MaterialApp(home: LoginScreen())));
      expect(find.text('Email'), findsOneWidget);
      expect(find.text('Password'), findsOneWidget);
      expect(find.text('Sign In'), findsOneWidget);
    });

    testWidgets('shows validation errors on empty submit', (tester) async {
      await tester.pumpWidget(const ProviderScope(child: MaterialApp(home: LoginScreen())));
      await tester.tap(find.text('Sign In'));
      await tester.pump();
      expect(find.text('Please enter your email'), findsOneWidget);
    });
  });
}
