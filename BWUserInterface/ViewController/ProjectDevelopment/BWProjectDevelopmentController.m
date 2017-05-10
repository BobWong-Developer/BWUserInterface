//
//  BWProjectDevelopmentController.m
//  BWUserInterface
//
//  Created by BobWong on 16/8/16.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWProjectDevelopmentController.h"

#define kTitle @"kTitle"
#define kSegueId @"kSegueId"

#define kTitlePureCode @"手写代码"
#define kTitleXib @"Xib"
#define kTitleStoryboard @"Storyboard"
#define kTitleJSEditNative @"JS Edit Native"
#define kTitleHTML @"HTML"

// PD: Project Development
NSString *const kSegueIdPDPushToPureCode = @"pd_push_to_pure_code";

@interface BWProjectDevelopmentController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation BWProjectDevelopmentController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dict0 = @{
                            kTitle: kTitlePureCode,
                            kSegueId: kSegueIdPDPushToPureCode
                            };
    _dataSource = @[dict0];
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
    [self performSegueWithIdentifier:dict[kSegueId] sender:dict];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UIViewController *vc = segue.destinationViewController;
    NSDictionary *dict = (NSDictionary *)sender;
    vc.title = dict[kTitle];
}

@end
