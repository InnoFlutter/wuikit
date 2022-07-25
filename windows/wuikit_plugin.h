#ifndef FLUTTER_PLUGIN_WUIKIT_PLUGIN_H_
#define FLUTTER_PLUGIN_WUIKIT_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace wuikit {

class WuikitPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  WuikitPlugin();

  virtual ~WuikitPlugin();

  // Disallow copy and assign.
  WuikitPlugin(const WuikitPlugin&) = delete;
  WuikitPlugin& operator=(const WuikitPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace wuikit

#endif  // FLUTTER_PLUGIN_WUIKIT_PLUGIN_H_
