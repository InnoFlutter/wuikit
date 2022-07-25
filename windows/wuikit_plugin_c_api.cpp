#include "include/wuikit/wuikit_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "wuikit_plugin.h"

void WuikitPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  wuikit::WuikitPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
