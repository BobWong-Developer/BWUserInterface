//
//  BWXibVCViewController.m
//  BWUserInterface
//
//  Created by BobWong on 16/8/15.
//  Copyright © 2016年 Bob Wong Studio. All rights reserved.
//

#import "BWXibVCViewController.h"

@interface BWXibVCViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *dataSource;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraintBtnLeft;

@end

@implementation BWXibVCViewController

/*--------------
    ViewController Xib的加载机制（待研究），API执行顺序
 --------------*/

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        NSLog(@"initWithNibName");
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dataSource = @[];
}

- (IBAction)buttonAct:(id)sender {
    /*--------------
        修改Xib约束，伴随动画
    --------------*/
    [UIView animateWithDuration:0.25 animations:^{
        _constraintBtnLeft.constant += 50;
        
        [self.view layoutSubviews];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

@end
