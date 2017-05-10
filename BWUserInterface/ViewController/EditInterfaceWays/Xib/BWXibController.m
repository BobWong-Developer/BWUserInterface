//
//  BWXibController.m
//  BWUserInterface
//
//  Created by BobWong on 16/8/12.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWXibController.h"
#import "BWXibVCViewController.h"
#import "BWXibViewController.h"

#define kTitle @"kTitle"
#define kVC @"kVC"

NSString *const kTitleXibVC = @"Xib ViewController";
NSString *const kTitleXibView = @"Xib View";

@interface BWXibController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation BWXibController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dict0 = @{
                            kTitle: kTitleXibVC,
                            kVC: NSStringFromClass([BWXibVCViewController class])
                            };
    NSDictionary *dict1 = @{
                            kTitle: kTitleXibView,
                            kVC: NSStringFromClass([BWXibViewController class])
                            };
    _dataSource = @[dict0, dict1];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellId = @"CellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = _dataSource[indexPath.row][kTitle];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    NSDictionary *dict = _dataSource[indexPath.row];
    Class class = NSClassFromString(dict[kVC]);
    BWBaseViewController *vc = [[class alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
