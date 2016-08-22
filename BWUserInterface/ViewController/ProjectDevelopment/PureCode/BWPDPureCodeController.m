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

/*---------------------------
    手写代码
    1、Category快速创建和设置UI，有全局的，也可以有功能模块的；
    2、全局宏定义UI数据；
    3、Code Snippets的维护；
    4、方法的封装；
    5、结合循环语句的编写UI；
    6、第三方UI控件的收藏；
---------------------------*/
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
    
    UIView *viewLine0 = [UIView viewLine];
    [self.view addSubview:viewLine0];
    [viewLine0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(label1.mas_bottom).offset(space);
        make.height.mas_equalTo(BW_HEIGHT_LINE);
    }];
}

@end
