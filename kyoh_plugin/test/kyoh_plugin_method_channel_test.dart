import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kyoh_plugin/kyoh_plugin_method_channel.dart';

void main() {
  MethodChannelKyohPlugin platform = MethodChannelKyohPlugin();
  const MethodChannel channel = MethodChannel('kyoh_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
