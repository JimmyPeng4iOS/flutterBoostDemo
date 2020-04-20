//
//  WPFlutterManager.m
//  wespy
//
//  Created by pengjizong on 2020/3/11.
//  Copyright © 2020 wepie. All rights reserved.
//

#import "WPFlutterManager.h"
#import <Flutter/Flutter.h>
#import <flutter_boost/FlutterBoost.h>
#import "WPFlutterRouter.h"

//#import <WpPluginAnimatePlugin.h>
@interface WPFlutterManager ()

@property (nonatomic, strong) FlutterEngine *engine;

@end

@implementation WPFlutterManager

+ (instancetype)sharedManager {
    static id instance;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    
    return instance;
}


- (void)setupFlutter
{
    WPFlutterRouter *router = [WPFlutterRouter new];
    __weak __typeof(self)weakSelf = self;
    [FlutterBoostPlugin.sharedInstance startFlutterWithPlatform:router onStart:^(FlutterEngine *engine) {
        weakSelf.engine = engine;
    }];
    
    
}


@end
