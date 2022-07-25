//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <wuikit/wuikit_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) wuikit_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "WuikitPlugin");
  wuikit_plugin_register_with_registrar(wuikit_registrar);
}
