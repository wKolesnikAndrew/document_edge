#import "DocumentEdgePlugin.h"
#if __has_include(<document_edge/document_edge-Swift.h>)
#import <document_edge/document_edge-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "document_edge-Swift.h"
#endif

@implementation DocumentEdgePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDocumentEdgePlugin registerWithRegistrar:registrar];
}
@end
