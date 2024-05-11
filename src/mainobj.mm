#import <UIKit/UIKit.h>
#include "main.hpp"

void showAlert(const char *title, const char *message, const char *Btn) {
    NSString *titleString = [NSString stringWithUTF8String:title];
    NSString *messageString = [NSString stringWithUTF8String:message];
    NSString *btnString = [NSString stringWithUTF8String:Btn];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:titleString
                                                                             message:messageString
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:btnString
                                                       style:UIAlertActionStyleDefault
                                                     handler:nil];
    
    [alertController addAction:okAction];
    
    // Get the root view controller to present the alert
    UIViewController *rootViewController = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    
    // Present the alert
    [rootViewController presentViewController:alertController animated:YES completion:nil];
}

void setAppIcon(NSString *iconPath) {
  if (@available(iOS 10.3, *)) {
    if ([[UIApplication sharedApplication] supportsAlternativeIcons]) {
      dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        UIImage *iconImage = [UIImage imageWithContentsOfFile:iconPath];

        dispatch_async(dispatch_get_main_queue(), ^{
          [[UIApplication sharedApplication] setAlternateIconImage:iconImage completionHandler:^(NSError * _Nullable error) {
            if (error) {
              showAlert("Error", "There has been an error setting the app icon.", "Cancel");
            }
          }];
        });
      });
    } else {
      showAlert("Unsupported.", "Setting app icons is not supported", "Cancel");
    }
  } else {
    showAlert("Unsupported Version", "Your iOS version does not support alternative app icons.", "Cancel");
  }
}