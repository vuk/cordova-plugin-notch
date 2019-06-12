/********* NotchPlugin.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface NotchPlugin : CDVPlugin {
  // Member variables go here.
}

- (void)has:(CDVInvokedUrlCommand*)command;
@end

@implementation NotchPlugin

- (void)has:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    
    bool hasNotch;

    hasNotch = false;

    if (@available(iOS 11.0, *)) {
        UIWindow *window = UIApplication.sharedApplication.keyWindow;
        hasNotch = window.safeAreaInsets.bottom > 0;
    }

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:hasNotch];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
