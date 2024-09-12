
import 'best_win_capture_platform_interface.dart';

class BestWinCapture {
  Future<String?> getPlatformVersion() {
    return BestWinCapturePlatform.instance.getPlatformVersion();
  }
}
