import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final ThemeMode themeMode;
  final ValueChanged<ThemeMode> onThemeModeChanged;
  const SettingsScreen({super.key, required this.themeMode, required this.onThemeModeChanged});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        Card(child: Padding(padding: const EdgeInsets.all(16), child: Row(children: [
          CircleAvatar(radius: 28, backgroundColor: theme.colorScheme.primaryContainer,
            child: Icon(Icons.person, size: 28, color: theme.colorScheme.onPrimaryContainer)),
          const SizedBox(width: 16),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Alex Johnson', style: theme.textTheme.titleMedium),
            Text('alex@flightbank.dev', style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant)),
          ])),
        ]))),
        const SizedBox(height: 24),
        Text('Appearance', style: theme.textTheme.titleMedium?.copyWith(color: theme.colorScheme.primary)),
        const SizedBox(height: 8),
        Card(child: Column(children: [
          RadioListTile<ThemeMode>(title: const Text('System'), subtitle: const Text('Follow device settings'),
            value: ThemeMode.system, groupValue: themeMode, onChanged: (v) => onThemeModeChanged(v!)),
          RadioListTile<ThemeMode>(title: const Text('Light'), value: ThemeMode.light, groupValue: themeMode, onChanged: (v) => onThemeModeChanged(v!)),
          RadioListTile<ThemeMode>(title: const Text('Dark'), value: ThemeMode.dark, groupValue: themeMode, onChanged: (v) => onThemeModeChanged(v!)),
        ])),
      ]),
    );
  }
}
