//
//  QCSecondViewController.m
//  CustomNavigationView
//
//  Created by Joe-c on 16/9/3.
//  Copyright © 2016年 Joe-c. All rights reserved.
//

#import "QCSecondViewController.h"
#import "QCThreeViewController.h"

@interface QCSecondViewController ()

@end

@implementation QCSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *pushBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [pushBtn setTitle:@"PushToThreeVC" forState:UIControlStateNormal];
    [pushBtn sizeToFit];
    pushBtn.center = self.view.center;
    pushBtn.backgroundColor = [UIColor blueColor];
    [pushBtn addTarget:self action:@selector(puToThreeVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
}

- (void)puToThreeVC{
    [self.navigationController pushViewController:[QCThreeViewController new] animated:YES];
}


@end
