//
//  QCThreeViewController.m
//  CustomNavigationView
//
//  Created by Joe-c on 16/9/3.
//  Copyright © 2016年 Joe-c. All rights reserved.
//

#import "QCThreeViewController.h"

@interface QCThreeViewController ()

@end

@implementation QCThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self.navigationBar setHidden:YES];
}

@end
