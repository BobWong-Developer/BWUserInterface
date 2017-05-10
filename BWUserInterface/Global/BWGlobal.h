//
//  BWGlobal.h
//  BWUserInterface
//
//  Created by BobWong on 16/8/16.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define H_TEXT_SINGLE_13 [[BWUISupport sharedInstance] heightOfSingleLine13FontSize]
#define H_TEXT_SINGLE_14 [[BWUISupport sharedInstance] heightOfSingleLine14FontSize]
#define H_TEXT_SINGLE_15 [[BWUISupport sharedInstance] heightOfSingleLine15FontSize]
#define H_TEXT_SINGLE_16 [[BWUISupport sharedInstance] heightOfSingleLine16FontSize]
#define H_TEXT_SINGLE_17 [[BWUISupport sharedInstance] heightOfSingleLine17FontSize]

@interface BWGlobal : NSObject

@end

@interface BWUISupport : NSObject

+ (instancetype)sharedInstance;

- (CGFloat)heightOfSingleLine13FontSize;
- (CGFloat)heightOfSingleLine14FontSize;
- (CGFloat)heightOfSingleLine15FontSize;
- (CGFloat)heightOfSingleLine16FontSize;
- (CGFloat)heightOfSingleLine17FontSize;

@end