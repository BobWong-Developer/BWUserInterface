//
//  BWLoginRegisterViewController.m
//  BWProjectTechnologyUI
//
//  Created by Bob Wong on 16/7/20.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWXibLoginRegisterViewController.h"
#import "BWXibRegisterViewController.h"
#import "BWXibLoginedViewController.h"

@interface BWXibLoginRegisterViewController ()

@end

@implementation BWXibLoginRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
//    self.edgesForExtendedLayout = UIRectEdgeNone;
//    self.automaticallyAdjustsScrollViewInsets = YES;
}

- (IBAction)loginAction:(UIButton *)sender {
    BWXibLoginedViewController *vcLogined = [[BWXibLoginedViewController alloc] init];
    [self.navigationController pushViewController:vcLogined animated:YES];
}

- (IBAction)registerAction:(UIButton *)sender {
    BWXibRegisterViewController *vcRegister = [[BWXibRegisterViewController alloc] init];
    [self.navigationController pushViewController:vcRegister animated:YES];
}


@end
