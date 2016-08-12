//
//  BWHomeController.m
//  BWUserInterface
//
//  Created by BobWong on 16/8/12.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWHomeController.h"

#define kTitle @"kTitle"
#define kSegueId @"kSegueId"

NSString *const kTitleEditInterfaceWays = @"界面编写方式";
NSString *const kTitleLayoutWays = @"界面布局方式";
NSString *const kTitleAnimation = @"动画";
NSString *const kTitleCG = @"计算机绘图";
NSString *const kTitlePrincipleAndMechanism = @"原理和机制";
NSString *const kTitleUIComponents = @"UI元素";
NSString *const kTitleUIUtilityFunction = @"UI实用功能";

NSString *const kSegueIdPushEditInterfaceWays = @"home_push_edit_interface_ways";

@interface BWHomeController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *dataSource;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation BWHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"BWUserInterface";
    
    NSDictionary *dict0 = @{
                            kTitle: kTitleEditInterfaceWays,
                            kSegueId: kSegueIdPushEditInterfaceWays
                            };
    _dataSource = @[
                    dict0
                    ];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataSource ? _dataSource.count : 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
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
    [self performSegueWithIdentifier:dict[kSegueId] sender:dict];  // sender为segue提供参数信息
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UIViewController *vc = segue.destinationViewController;
    NSDictionary *dict = (NSDictionary *)sender;
    vc.title = dict[kTitle];
}

@end
