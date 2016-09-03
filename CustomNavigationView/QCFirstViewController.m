//
//  QCFirstViewController.m
//  CustomNavigationView
//
//  Created by Joe-c on 16/9/3.
//  Copyright © 2016年 Joe-c. All rights reserved.
//

#import "QCFirstViewController.h"
#import "QCSecondViewController.h"

@interface QCFirstViewController ()

@end

@implementation QCFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"哈哈";
    
    self.navItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Push" style:UIBarButtonItemStylePlain target:self action:@selector(pushToSecond)];

}

- (void)pushToSecond{
    [self.navigationController pushViewController:[QCSecondViewController new] animated:YES];
}



@end
