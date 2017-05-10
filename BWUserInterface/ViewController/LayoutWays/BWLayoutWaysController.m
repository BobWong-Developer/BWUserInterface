//
//  BWLayoutWaysController.m
//  BWUserInterface
//
//  Created by BobWong on 16/8/12.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWLayoutWaysController.h"

#define kTitle @"kTitle"
#define kSegueId @"kSegueId"

NSString *const kTitleFrame = @"Frame";
NSString *const kTitleConstraints = @"Constraints";

NSString *const kSeguePushToFrame = @"layout_push_to_frame";
NSString *const kSeguePushToConstraints = @"layout_push_to_constraints";

@interface BWLayoutWaysController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation BWLayoutWaysController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dict0 = @{
                            kTitle: kTitleFrame,
                            kSegueId: kSeguePushToFrame
                            };
    NSDictionary *dict1 = @{
                            kTitle: kTitleConstraints,
                            kSegueId: kSeguePushToConstraints
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    NSDictionary *dict = _dataSource[indexPath.row];
    [self performSegueWithIdentifier:dict[kSegueId] sender:dict];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UIViewController *vc = segue.destinationViewController;
    NSDictionary *dict = (NSDictionary *)sender;
    vc.title = dict[kTitle];
}

@end
