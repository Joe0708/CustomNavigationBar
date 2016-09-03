//
//  QCBaseViewController.m
//  CustomNavigationView
//
//  Created by Joe-c on 16/9/3.
//  Copyright © 2016年 Joe-c. All rights reserved.
//

#import "QCBaseViewController.h"

@interface QCBaseViewController ()



@end

@implementation QCBaseViewController

- (UINavigationBar *)navigationBar{
    if (!_navigationBar) {
        _navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 64)];
        [self.view addSubview:_navigationBar];

    }
    return _navigationBar;
}

- (UINavigationItem *)navItem{
    if (!_navItem) {
        _navItem = [[UINavigationItem alloc] init];
    }
    return _navItem;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.items = @[self.navItem];
}

- (void)setTitle:(NSString *)title{
    self.navItem.title = title;
}

@end
