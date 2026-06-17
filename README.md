# CoreBank Tutorial

A hands-on Flutter tutorial that teaches you to build CoreBank — a real banking app — from scratch.

**12 chapters** covering widgets, state management (Riverpod 3), routing (GoRouter), persistence (Drift), animations, platform channels, and testing.

## Quick Start

```bash
git clone git@github.com:team360r/CoreBank.git
cd CoreBank
./setup.sh
./start.sh
```

## Code generation

The Drift database layer relies on generated `*.g.dart` files, which are not committed. After cloning (or whenever you change the Drift tables/database), generate them:

```bash
dart run build_runner build --delete-conflicting-outputs
```

Without this step, `flutter analyze`, the tests, and the build will fail with `app_database.g.dart` "hasn't been generated" errors.

## Structure

- `docs-site/` — Docusaurus tutorial website
- `lib/` — CoreBank Flutter app
- `test/` — Widget and unit tests
- `integration_test/` — Integration tests

## Requirements

- Flutter SDK 3.22+
- Node.js 20+ (for the tutorial site)
- A device or emulator

## License

Private — team360r
