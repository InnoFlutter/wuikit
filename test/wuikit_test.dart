import 'package:flutter_test/flutter_test.dart';
import 'package:wuikit/wuikit.dart';
import 'package:wuikit/wuikit_platform_interface.dart';
import 'package:wuikit/wuikit_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWuikitPlatform 
    with MockPlatformInterfaceMixin
    implements WuikitPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final WuikitPlatform initialPlatform = WuikitPlatform.instance;

  test('$MethodChannelWuikit is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWuikit>());
  });

  test('getPlatformVersion', () async {
    Wuikit wuikitPlugin = Wuikit();
    MockWuikitPlatform fakePlatform = MockWuikitPlatform();
    WuikitPlatform.instance = fakePlatform;
  
    expect(await wuikitPlugin.getPlatformVersion(), '42');
  });
}
