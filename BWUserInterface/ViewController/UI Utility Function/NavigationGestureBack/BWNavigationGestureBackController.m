//
//  BWNavigationGestureBackController.m
//  BWUserInterface
//
//  Created by BobWong on 16/8/22.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWNavigationGestureBackController.h"

@implementation BWNavigationGestureBackController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNavigationGesture];
}

- (void)setNavigationGesture {
    // 获取手势
    UIGestureRecognizer *tempGes = self.navigationController.interactivePopGestureRecognizer;
    // 关闭此手势
    tempGes.enabled = NO;
    // 获取手势的回调数组
    NSMutableArray *_targets = [tempGes valueForKey:@"_targets"];
    
    // 获取系统的侧滑手势的回调对象和方法
    id tar = [[_targets firstObject] valueForKey:@"target"];
    
    SEL sel = NSSelectorFromString(@"handleNavigationTransition:");
    // 创建一个手势 添加上去
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:tar action:sel];
    [tempGes.view addGestureRecognizer:pan];
}

@end
