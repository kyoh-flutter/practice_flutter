import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'kyoh_plugin_platform_interface.dart';

/// An implementation of [KyohPluginPlatform] that uses method channels.
class MethodChannelKyohPlugin extends KyohPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('kyoh_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
