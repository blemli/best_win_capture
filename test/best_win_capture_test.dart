import 'package:flutter_test/flutter_test.dart';
import 'package:best_win_capture/best_win_capture.dart';
import 'package:best_win_capture/best_win_capture_platform_interface.dart';
import 'package:best_win_capture/best_win_capture_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBestWinCapturePlatform
    with MockPlatformInterfaceMixin
    implements BestWinCapturePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BestWinCapturePlatform initialPlatform = BestWinCapturePlatform.instance;

  test('$MethodChannelBestWinCapture is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBestWinCapture>());
  });

  test('getPlatformVersion', () async {
    BestWinCapture bestWinCapturePlugin = BestWinCapture();
    MockBestWinCapturePlatform fakePlatform = MockBestWinCapturePlatform();
    BestWinCapturePlatform.instance = fakePlatform;

    expect(await bestWinCapturePlugin.getPlatformVersion(), '42');
  });
}
