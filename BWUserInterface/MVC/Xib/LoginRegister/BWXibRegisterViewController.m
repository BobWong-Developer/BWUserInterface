//
//  BWXibRegisterViewController.m
//  BWProjectTechnologyUI
//
//  Created by Bob Wong on 16/7/20.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWXibRegisterViewController.h"
#import "BWXibRegisterView.h"

@interface BWXibRegisterViewController ()

@end

@implementation BWXibRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Register";
    
    CGRect width_screen = [UIScreen mainScreen].bounds;
    NSArray *array = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([BWXibRegisterView class]) owner:nil options:nil];
    BWXibRegisterView *viewLogined = [array firstObject];
    viewLogined.frame = CGRectMake(0, 64 + 10, CGRectGetWidth(width_screen), 150);
    [self.view addSubview:viewLogined];
}

@end
