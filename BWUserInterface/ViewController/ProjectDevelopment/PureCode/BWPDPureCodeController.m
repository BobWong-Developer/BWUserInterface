//
//  BWPDPureCodeController.m
//  BWUserInterface
//
//  Created by BobWong on 16/8/16.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWPDPureCodeController.h"

@interface BWPDPureCodeController ()

@end

@implementation BWPDPureCodeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUI];
}

- (void)setUI {
    CGFloat space = 20;
    
    UILabel *label0 = [UILabel labelSingleLineLeftAlignment13FontSize];
    label0.text = @"This is the label0";
    label0.backgroundColor = [UIColor greenColor];
    [self.view addSubview:label0];
    [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(NAVIGATION_BAR_HEIGHT_FULL + space);
        make.height.mas_equalTo(50);
    }];
    
    UILabel *label1 = [UILabel labelSingleLineRightAlignment13FontSize];
    label1.text = @"This is the label1";
    label1.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:label1];
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(label0.mas_bottom).offset(space);
        make.height.mas_equalTo(50);
    }];
}

@end
