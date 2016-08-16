//
//  UILabel+BWAdd.m
//  BWUserInterface
//
//  Created by BobWong on 16/8/16.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "UILabel+BWAdd.h"

@implementation UILabel (BWAdd)

- (void)reframeLabelAccordingToText {
    CGRect frame = self.frame;
    CGFloat height = [[self class] heightForString:self.text font:self.font width:CGRectGetWidth(frame)];
    frame.size.height = height;
    self.frame = frame;
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

@end
