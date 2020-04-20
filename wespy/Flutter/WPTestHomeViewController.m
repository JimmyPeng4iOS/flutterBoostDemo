//
//  WPTestHomeViewController.m
//  wespy
//
//  Created by pengjizong on 2020/4/16.
//  Copyright © 2020 wepie. All rights reserved.
//

#import "WPTestHomeViewController.h"
#import "WPFlutterRouter.h"

@interface WPTestHomeViewController ()

@end

@implementation WPTestHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)goFlutter:(id)sender {
    [WPFlutterRouter gotoFlutterTestPage];
}
- (IBAction)goNative:(id)sender {
    [self.navigationController pushViewController:[UITableViewController new] animated:YES];
}

@end
