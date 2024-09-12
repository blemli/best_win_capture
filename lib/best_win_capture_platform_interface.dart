import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'best_win_capture_method_channel.dart';

abstract class BestWinCapturePlatform extends PlatformInterface {
  /// Constructs a BestWinCapturePlatform.
  BestWinCapturePlatform() : super(token: _token);

  static final Object _token = Object();

  static BestWinCapturePlatform _instance = MethodChannelBestWinCapture();

  /// The default instance of [BestWinCapturePlatform] to use.
  ///
  /// Defaults to [MethodChannelBestWinCapture].
  static BestWinCapturePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BestWinCapturePlatform] when
  /// they register themselves.
  static set instance(BestWinCapturePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
