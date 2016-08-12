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
    // Frame
    UIView *viewFrame = [[UIView alloc] initWithFrame:CGRectMake(0, 64 + 20, 100, 80)];
    viewFrame.backgroundColor = [UIColor greenColor];
    [self.view addSubview:viewFrame];
    
    // Constraints
}

@end
