//
//  WPAppDelegate.m
//  whosspy
//
//  Created by Liu Gang on 13-10-5.
//  Copyright (c) 2013年 wepie. All rights reserved.
//


#import "WPAppDelegate.h"
#import "WPTestHomeViewController.h"
#import "WPFlutterManager.h"

@interface WPAppDelegate()
@end


@implementation WPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [[WPFlutterManager sharedManager] setupFlutter];
    self.window = [[UIWindow alloc] init];
    WPTestHomeViewController *initialViewController = [WPTestHomeViewController new];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:initialViewController];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
