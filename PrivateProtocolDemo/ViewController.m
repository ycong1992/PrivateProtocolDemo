//
//  ViewController.m
//  PrivateProtocolDemo
//
//  Created by SZOeasy on 2020/3/2.
//  Copyright © 2020 ycong. All rights reserved.
//

#import "ViewController.h"
#import "PrivacyProcessingView.h"

@interface ViewController ()

@property (nonatomic, strong) PrivacyProcessingView *privacyView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 300, 100)];
    label.text = @"测试";
    [self.view addSubview:label];
    
    // test
//    if (@available(iOS 13.0, *)) {
//      [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDarkContent animated:NO];
//    } else {
//      [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
//    }

    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    NSString *agreePrivacy = [userDefault objectForKey:@"AgreePrivacy"];
    if (!agreePrivacy || agreePrivacy.intValue < 1) {
      [self.view addSubview:self.privacyView];
      if (@available(iOS 13.0, *)) {
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDarkContent animated:NO];
      } else {
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
      }
    }
}

- (PrivacyProcessingView *)privacyView {
    if (!_privacyView) {
        _privacyView = [[PrivacyProcessingView alloc] initWithFrame:self.view.frame];
    }
    return _privacyView;
}


@end
