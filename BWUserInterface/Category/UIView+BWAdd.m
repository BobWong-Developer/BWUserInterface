//
//  UIView+BWAdd.m
//  BWUserInterface
//
//  Created by BobWong on 16/8/12.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "UIView+BWAdd.h"

@implementation UIView (BWAdd)

+ (UIView *)viewClearColor {
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor clearColor];
    return view;
}

+ (UIView *)viewLine {
    UIView *viewLine = [[UIView alloc] init];
    viewLine.backgroundColor = [UIColor grayColor];
    return viewLine;
}

@end
