import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'kyoh_plugin_method_channel.dart';

abstract class KyohPluginPlatform extends PlatformInterface {
  /// Constructs a KyohPluginPlatform.
  KyohPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static KyohPluginPlatform _instance = MethodChannelKyohPlugin();

  /// The default instance of [KyohPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelKyohPlugin].
  static KyohPluginPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [KyohPluginPlatform] when
  /// they register themselves.
  static set instance(KyohPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
