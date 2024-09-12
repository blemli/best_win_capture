#include "include/best_win_capture/best_win_capture_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "best_win_capture_plugin.h"

void BestWinCapturePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  best_win_capture::BestWinCapturePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
