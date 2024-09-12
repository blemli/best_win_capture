#ifndef FLUTTER_PLUGIN_BEST_WIN_CAPTURE_PLUGIN_H_
#define FLUTTER_PLUGIN_BEST_WIN_CAPTURE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace best_win_capture {

class BestWinCapturePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  BestWinCapturePlugin();

  virtual ~BestWinCapturePlugin();

  // Disallow copy and assign.
  BestWinCapturePlugin(const BestWinCapturePlugin&) = delete;
  BestWinCapturePlugin& operator=(const BestWinCapturePlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace best_win_capture

#endif  // FLUTTER_PLUGIN_BEST_WIN_CAPTURE_PLUGIN_H_
