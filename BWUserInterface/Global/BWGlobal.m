//
//  BWGlobal.m
//  BWUserInterface
//
//  Created by BobWong on 16/8/16.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWGlobal.h"

@implementation BWGlobal



@end

@implementation BWUISupport

static CGFloat _heightOfSingleLine13FontSize;
static CGFloat _heightOfSingleLine14FontSize;
static CGFloat _heightOfSingleLine15FontSize;
static CGFloat _heightOfSingleLine16FontSize;
static CGFloat _heightOfSingleLine17FontSize;

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static BWUISupport *sharedInstance;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[BWUISupport alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init {
    if (self = [super init]) {
        [self calculateHeights];
    }
    return self;
}

- (void)calculateHeights {
    NSString *text = @"T";
    CGFloat width = 50.0;
    _heightOfSingleLine13FontSize = [[self class] heightForString:text font:[UIFont systemFontOfSize:13.0] width:width];
    _heightOfSingleLine14FontSize = [[self class] heightForString:text font:[UIFont systemFontOfSize:14.0] width:width];
    _heightOfSingleLine15FontSize = [[self class] heightForString:text font:[UIFont systemFontOfSize:15.0] width:width];
    _heightOfSingleLine16FontSize = [[self class] heightForString:text font:[UIFont systemFontOfSize:16.0] width:width];
    _heightOfSingleLine17FontSize = [[self class] heightForString:text font:[UIFont systemFontOfSize:17.0] width:width];
}

+ (CGFloat)heightForString:(NSString *)text
                      font:(UIFont *)font
                     width:(CGFloat)width
{
    NSDictionary *attributes = @{
                                 NSFontAttributeName: font
                                 };
    CGSize size = [text boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size;
    return size.height;
}

- (CGFloat)heightOfSingleLine13FontSize {
    return _heightOfSingleLine13FontSize;
}

- (CGFloat)heightOfSingleLine14FontSize {
    return _heightOfSingleLine14FontSize;
}

- (CGFloat)heightOfSingleLine15FontSize {
    return _heightOfSingleLine15FontSize;
}

- (CGFloat)heightOfSingleLine16FontSize {
    return _heightOfSingleLine16FontSize;
}

- (CGFloat)heightOfSingleLine17FontSize {
    return _heightOfSingleLine17FontSize;
}

@end