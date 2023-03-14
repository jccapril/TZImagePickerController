//
//  NSBundle+TZImagePicker.m
//  TZImagePickerController
//
//  Created by 谭真 on 16/08/18.
//  Copyright © 2016年 谭真. All rights reserved.
//

#import "NSBundle+TZImagePicker.h"
#import "TZImagePickerController.h"
#import <Foundation/Foundation.h>

@implementation NSBundle (TZImagePicker)

+ (NSBundle *)tz_imagePickerBundle {
#ifdef SWIFT_PACKAGE
    NSURL *bundleURL = [[[NSBundle mainBundle] bundleURL] URLByAppendingPathComponent:@"TZImagePickerController"];
    NSBundle *bundle =[NSBundle bundleWithURL:bundleURL];
#else
    NSBundle *bundle = [NSBundle bundleForClass:[TZImagePickerController class]];
#endif
    

    NSURL *url = [bundle URLForResource:@"TZImagePickerController" withExtension:@"bundle"];
    bundle = [NSBundle bundleWithURL:url];
    return bundle;
}

+ (NSString *)tz_localizedStringForKey:(NSString *)key {
    return [self tz_localizedStringForKey:key value:@""];
}

+ (NSString *)tz_localizedStringForKey:(NSString *)key value:(NSString *)value {
    NSBundle *bundle = [TZImagePickerConfig sharedInstance].languageBundle;
    NSString *value1 = [bundle localizedStringForKey:key value:value table:nil];
    return value1;
}

@end
