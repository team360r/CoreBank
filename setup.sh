#!/bin/bash
set -e

cd "$(dirname "$0")"

echo "==> Installing Flutter dependencies..."
flutter pub get

echo "==> Generating code (Drift, Riverpod)..."
dart run build_runner build --delete-conflicting-outputs

echo "==> Installing docs site dependencies..."
cd docs-site && npm install

echo ""
echo "Setup complete! Run ./start.sh to launch the tutorial."
