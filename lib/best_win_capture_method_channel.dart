import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'best_win_capture_platform_interface.dart';

/// An implementation of [BestWinCapturePlatform] that uses method channels.
class MethodChannelBestWinCapture extends BestWinCapturePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('best_win_capture');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
