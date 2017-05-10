//
//  BWXibViewController.m
//  BWUserInterface
//
//  Created by BobWong on 16/8/15.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWXibViewController.h"
#import "BWCustomView0.h"
#import "BWCustomView1.h"

@interface BWXibViewController ()

@end

@implementation BWXibViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setXibView];
}

- (void)setXibView {
    BWCustomView0 *view0 = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([BWCustomView0 class]) owner:nil options:nil] firstObject];
    view0.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view0];
    [view0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(NAVIGATION_BAR_HEIGHT_FULL + 20);
        make.height.mas_equalTo(175);
    }];
}

@end
