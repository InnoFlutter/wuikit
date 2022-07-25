#import "WuikitPlugin.h"
#if __has_include(<wuikit/wuikit-Swift.h>)
#import <wuikit/wuikit-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "wuikit-Swift.h"
#endif

@implementation WuikitPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWuikitPlugin registerWithRegistrar:registrar];
}
@end
