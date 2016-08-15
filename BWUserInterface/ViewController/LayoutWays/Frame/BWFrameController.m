//
//  BWFrameController.m
//  BWUserInterface
//
//  Created by BobWong on 16/8/15.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWFrameController.h"

@interface BWFrameController ()

@end

@implementation BWFrameController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)setUIWithFrame {
    UIView *view0 = [[UIView alloc] initWithFrame:CGRectMake(10, NAVIGATION_BAR_HEIGHT_FULL + 30, 200, 100)];
    view0.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view0];
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(20, CGRectGetMaxY(view0.frame), 200, 100)];
    view1.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view1];
}

@end
