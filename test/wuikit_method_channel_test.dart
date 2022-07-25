import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wuikit/wuikit_method_channel.dart';

void main() {
  MethodChannelWuikit platform = MethodChannelWuikit();
  const MethodChannel channel = MethodChannel('wuikit');

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
