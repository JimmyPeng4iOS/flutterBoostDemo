//
//  main.m
//  wespy
//
//  Created by Liu Gang on 13-10-14.
//  Copyright (c) 2013年 wepie. All rights reserved.
//

#import "WPAppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        @try {
            return UIApplicationMain(argc, argv, nil, NSStringFromClass([WPAppDelegate class]));
        } @catch (NSException *exception) {
            NSLog(@"reason is %@",exception.reason);
        } @finally {
            
        }
    }
}
