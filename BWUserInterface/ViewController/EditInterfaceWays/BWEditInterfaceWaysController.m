//
//  BWEditInterfaceWaysController.m
//  BWUserInterface
//
//  Created by BobWong on 16/8/12.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWEditInterfaceWaysController.h"

#define kTitle @"kTitle"
#define kSegueId @"kSegueId"

NSString *const kTitlePureCode = @"手写代码";
NSString *const kTitleXib = @"Xib";
NSString *const kTitleStoryboard = @"Storyboard";
NSString *const kTitleJSEditNative = @"JS Edit Native";
NSString *const kTitleHTML = @"HTML";

NSString *const kSegueIdEditPushToPureCode = @"edit_push_to_pure_code";
NSString *const kSegueIdEditPushToXib = @"edit_push_to_xib";

@interface BWEditInterfaceWaysController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *dataSource;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation BWEditInterfaceWaysController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dict0 = @{
                            kTitle: kTitlePureCode,
                            kSegueId: kSegueIdEditPushToPureCode
                            };
    NSDictionary *dict1 = @{
                            kTitle: kTitleXib,
                            kSegueId: kSegueIdEditPushToXib
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
    [self performSegueWithIdentifier:dict[kSegueId] sender:dict];  // sender为segue提供参数信息
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UIViewController *vc = segue.destinationViewController;
    NSDictionary *dict = (NSDictionary *)sender;
    vc.title = dict[kTitle];
}

@end
