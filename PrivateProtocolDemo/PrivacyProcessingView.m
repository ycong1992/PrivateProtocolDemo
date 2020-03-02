//
//  PrivacyProcessingView.m
//  PrivateProtocolDemo
//
//  Created by SZOeasy on 2020/3/2.
//  Copyright © 2020 ycong. All rights reserved.
//

#import "PrivacyProcessingView.h"

@interface PrivacyProcessingView ()

@property (nonatomic, strong) UIImageView *bgImage;
@property (nonatomic, strong) UILabel *detailLabel;
@property (nonatomic, strong) UIButton *confirmBtn;
@property (nonatomic, strong) UIButton *cancelBtn;

@end

@implementation PrivacyProcessingView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI:frame];
    }
    return self;
}

- (void)initUI:(CGRect)frame {
    self.bgImage = [[UIImageView alloc] initWithFrame:frame];
    self.bgImage.image = [UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"StartImage.png"]];
    [self addSubview:self.bgImage];

    self.detailLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, CGRectGetWidth(frame)-30, 300)];
    self.detailLabel.text = @"隐私协议xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
    self.detailLabel.numberOfLines = 0;
    [self addSubview:self.detailLabel];
    
    self.confirmBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    self.confirmBtn.frame = CGRectMake(15, CGRectGetMaxY(self.detailLabel.frame)+15, CGRectGetWidth(frame)-30, 48);
    self.confirmBtn.backgroundColor = [UIColor blueColor];
    [self.confirmBtn setTitle:@"同意" forState:UIControlStateNormal];
    [self.confirmBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.confirmBtn addTarget:self action:@selector(confirmBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.confirmBtn];
    
    self.cancelBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    self.cancelBtn.frame = CGRectMake(15, CGRectGetMaxY(self.confirmBtn.frame)+15, CGRectGetWidth(frame)-30, 48);
    self.cancelBtn.backgroundColor = [UIColor blueColor];
    [self.cancelBtn setTitle:@"不同意" forState:UIControlStateNormal];
    [self.cancelBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.cancelBtn addTarget:self action:@selector(cancelBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.cancelBtn];
}

- (void)confirmBtnClick {
    [self removeFromSuperview];
//    self = nil;
    //  [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

- (void)cancelBtnClick {
    exit(0);
}

@end
