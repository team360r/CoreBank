import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class BiometricService {
  static const _channel = MethodChannel('com.flightbank/biometrics');

  Future<bool> isAvailable() async {
    if (kIsWeb) return false;
    try { return await _channel.invokeMethod<bool>('isAvailable') ?? false; }
    on PlatformException { return false; }
    on MissingPluginException { return false; }
  }

  Future<bool> authenticate({String reason = 'Verify your identity'}) async {
    if (kIsWeb) return false;
    try { return await _channel.invokeMethod<bool>('authenticate', {'reason': reason}) ?? false; }
    on PlatformException catch (e) { debugPrint('Biometric auth failed: ${e.message}'); return false; }
    on MissingPluginException { return false; }
  }
}
