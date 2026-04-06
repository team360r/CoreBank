import 'package:flutter/material.dart';
import 'routing/router.dart';
import 'theme/app_theme.dart';

void main() { runApp(const FlightBankApp()); }

class FlightBankApp extends StatefulWidget {
  const FlightBankApp({super.key});
  static _FlightBankAppState? of(BuildContext context) => context.findAncestorStateOfType<_FlightBankAppState>();
  @override
  State<FlightBankApp> createState() => _FlightBankAppState();
}

class _FlightBankAppState extends State<FlightBankApp> {
  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;
  void setThemeMode(ThemeMode mode) => setState(() => _themeMode = mode);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: 'FlightBank', debugShowCheckedModeBanner: false,
      theme: AppTheme.light(), darkTheme: AppTheme.dark(), themeMode: _themeMode, routerConfig: router);
  }
}
