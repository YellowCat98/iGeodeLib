#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>
#include "main.hpp"

void showAlert(const char *title, const char *message) {
    NSString *titleString = [NSString stringWithUTF8String:title];
    NSString *messageString = [NSString stringWithUTF8String:message];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:titleString
                                                                             message:messageString
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleDefault
                                                     handler:nil];
    
    [alertController addAction:okAction];
    
    // Get the root view controller to present the alert
    UIViewController *rootViewController = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    
    // Present the alert
    [rootViewController presentViewController:alertController animated:YES completion:nil];
}



// Custom delegate class for image picker
@interface ImagePickerDelegate : NSObject <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@end

@implementation ImagePickerDelegate

// Delegate method called when an image is picked
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey, id> *)info {
    NSString *mediaType = info[UIImagePickerControllerMediaType];
    if ([mediaType isEqualToString:(NSString *)kUTTypeImage]) {
        UIImage *selectedImage = info[UIImagePickerControllerOriginalImage];
        NSURL *imageURL = info[UIImagePickerControllerImageURL];
        NSString *imageName = [imageURL lastPathComponent];
        
        showAlert("Selected Image", [imageName UTF8String]);
    }
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}

// Delegate method called when the image picker is canceled
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:nil];
}

@end

void pickImage() {
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    // Create an instance of our custom delegate class
    ImagePickerDelegate *imagePickerDelegate = [[ImagePickerDelegate alloc] init];
    imagePicker.delegate = imagePickerDelegate;
    
    // Get the root view controller to present the image picker
    UIViewController *rootViewController = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    [rootViewController presentViewController:imagePicker animated:YES completion:nil];
}