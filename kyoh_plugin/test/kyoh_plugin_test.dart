import 'package:flutter_test/flutter_test.dart';
import 'package:kyoh_plugin/kyoh_plugin.dart';
import 'package:kyoh_plugin/kyoh_plugin_platform_interface.dart';
import 'package:kyoh_plugin/kyoh_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockKyohPluginPlatform 
    with MockPlatformInterfaceMixin
    implements KyohPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final KyohPluginPlatform initialPlatform = KyohPluginPlatform.instance;

  test('$MethodChannelKyohPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelKyohPlugin>());
  });

  test('getPlatformVersion', () async {
    KyohPlugin kyohPlugin = KyohPlugin();
    MockKyohPluginPlatform fakePlatform = MockKyohPluginPlatform();
    KyohPluginPlatform.instance = fakePlatform;
  
    expect(await kyohPlugin.getPlatformVersion(), '42');
  });
}
