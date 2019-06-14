/********* NotchPlugin.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface CDVCutout : CDVPlugin {
  // Member variables go here.
}

- (void)has:(CDVInvokedUrlCommand*)command;
@end

@implementation CDVCutout

- (void)has:(CDVInvokedUrlCommand*)command
{
  CDVPluginResult* pluginResult = nil;

  BOOL hasNotch;
  hasNotch = NO;

  if (@available(iOS 11.0, *)) {
      UIWindow *window = UIApplication.sharedApplication.keyWindow;
      hasNotch = window.safeAreaInsets.bottom > 0;
  }

  NSString *hasNotchString;

  if (hasNotch) {
    hasNotchString = @"true";
  } else {
    hasNotchString = @"false";
  }
  pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:hasNotchString];

  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
