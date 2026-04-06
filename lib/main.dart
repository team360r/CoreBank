import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const FlightBankApp());
}

class FlightBankApp extends StatelessWidget {
  const FlightBankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlightBank',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF0277BD),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
