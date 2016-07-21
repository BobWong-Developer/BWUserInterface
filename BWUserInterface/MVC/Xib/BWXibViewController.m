//
//  BWXibViewController.m
//  BWProjectTechnologyUI
//
//  Created by Bob Wong on 16/7/19.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWXibViewController.h"
#import "BWXibResearchViewController.h"
#import "BWXibLoginRegisterViewController.h"
#import "BWWashClothesViewController.h"

NSString *const kTitleResearch = @"Research";
NSString *const kTitleLoginRegister = @"Login Register";
NSString *const kTitleSimulateWashClothes = @"Wash Clothes";
NSString *const kTitleProjectExperience = @"Project Experience";

@interface BWXibViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *arrayDataSource;  //!< Data Source

@end

@implementation BWXibViewController

- (instancetype)init
{
    if (self = [super init]) {
        _arrayDataSource = @[kTitleResearch, kTitleLoginRegister, kTitleSimulateWashClothes, kTitleProjectExperience];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
    }
    return self;
}

/*
 * 这个不会被执行
 */
- (void)awakeFromNib
{
    [super awakeFromNib];
    
    NSLog(@"awake from nib");
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
    if ([title isEqualToString:kTitleLoginRegister]) {
        vcNext = [BWXibLoginRegisterViewController new];
    }
    
    [self.navigationController pushViewController:vcNext animated:YES];
}

@end
