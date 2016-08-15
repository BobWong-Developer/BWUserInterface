//
//  BWPureCodeController.m
//  BWUserInterface
//
//  Created by BobWong on 16/8/12.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWPureCodeController.h"

@implementation BWPureCodeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUIWithPureCode];
}

- (void)setUIWithPureCode {
    CGFloat space = 20;
    
    /*--------------------------
        Frame
    ---------------------------*/
    UIView *viewFrame = [[UIView alloc] initWithFrame:CGRectMake(space, NAVIGATION_BAR_HEIGHT_FULL + space, 100, 80)];
    viewFrame.backgroundColor = [UIColor greenColor];
    [self.view addSubview:viewFrame];
    
    /*--------------------------
        Constraints
        Masonry
     ---------------------------*/
    UIView *viewConstraints = [[UIView alloc] init];
    viewConstraints.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:viewConstraints];
    [viewConstraints mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(space);
        make.width.mas_equalTo(200);
        make.top.mas_equalTo(CGRectGetMaxY(viewFrame.frame) + space);
        make.height.mas_equalTo(100);
    }];
}

@end
