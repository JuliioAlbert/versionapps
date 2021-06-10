#import "VersionappsPlugin.h"
#if __has_include(<versionapps/versionapps-Swift.h>)
#import <versionapps/versionapps-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "versionapps-Swift.h"
#endif

@implementation VersionappsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVersionappsPlugin registerWithRegistrar:registrar];
}
@end
