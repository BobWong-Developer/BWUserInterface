//
//  BWMainViewController.m
//  BWProjectTechnologyUI
//
//  Created by Bob Wong on 16/7/19.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWMainViewController.h"
#import "BWXibViewController.h"

NSString *const kTitleFrameAndAutoLayout = @"Frame and AutoLayout";
NSString *const kTitlePureCode = @"Pure Code";
NSString *const kTitleXib = @"Xib";
NSString *const kTitleStoryboard = @"UIStoryboard";

@interface BWMainViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *arrayDataSource;  //!< Data Source

@end

@implementation BWMainViewController

- (instancetype)init
{
    if (self = [super init]) {
        _arrayDataSource = @[kTitleFrameAndAutoLayout, kTitlePureCode, kTitleXib, kTitleStoryboard];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"UI";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arrayDataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"CellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = _arrayDataSource[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    NSString *title = _arrayDataSource[indexPath.row];
    UIViewController *vcNext;
    if ([title isEqualToString:kTitleXib]) {
        vcNext = [BWXibViewController new];
    }
    
    [self.navigationController pushViewController:vcNext animated:YES];
}

@end
