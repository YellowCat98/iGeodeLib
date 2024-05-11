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

class ImagePickerDelegate : public NSObject<UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
public:
    void imagePickerControllerDidCancel(UIImagePickerController *picker) override {
        [picker dismissViewControllerAnimated:YES completion:nil];
    }

    void imagePickerController(UIImagePickerController *picker, NSDictionary<UIImagePickerControllerInfoKey, id> *info) override {
        NSString *mediaType = info[UIImagePickerControllerMediaType];
        if ([mediaType isEqualToString:(NSString *)kUTTypeImage]) {
            UIImage *selectedImage = info[UIImagePickerControllerOriginalImage];
            NSURL *imageURL = info[UIImagePickerControllerImageURL];
            NSString *imageName = [imageURL lastPathComponent];

            showAlert("Selected Image", [imageName UTF8String]);
        }

        [picker dismissViewControllerAnimated:YES completion:nil];
    }
};

// i despise objective c++

void pickImage() {
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;

    UIViewController *rootViewController = [[[[UIApplication sharedApplication] delegate] window] rootViewController];

    // Create an instance of ImagePickerDelegate and assign it as the delegate of the image picker
    ImagePickerDelegate *pickerDelegate = [ImagePickerDelegate new];
    imagePicker.delegate = pickerDelegate;

    [rootViewController presentViewController:imagePicker animated:YES completion:nil];
}