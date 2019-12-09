#import "HelloFfiPlugin.h"
#if __has_include(<hello_ffi/hello_ffi-Swift.h>)
#import <hello_ffi/hello_ffi-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "hello_ffi-Swift.h"
#endif

@implementation HelloFfiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHelloFfiPlugin registerWithRegistrar:registrar];
}
@end
