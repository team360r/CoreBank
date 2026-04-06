import 'package:flutter/material.dart';
import 'routing/router.dart';

void main() { runApp(const FlightBankApp()); }

class FlightBankApp extends StatelessWidget {
  const FlightBankApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: 'FlightBank', debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: const Color(0xFF0277BD), useMaterial3: true),
      routerConfig: router);
  }
}
