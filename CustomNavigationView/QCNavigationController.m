//
//  QCNavigationController.m
//  CustomNavigationView
//
//  Created by Joe-c on 16/9/3.
//  Copyright © 2016年 Joe-c. All rights reserved.
//

#import "QCNavigationController.h"
#import "QCBaseViewController.h"

@interface QCNavigationController ()

@end

@implementation QCNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationBar setHidden:YES];
    //[self.navigationBar removeFromSuperview];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{

    if (self.viewControllers.count > 0){
        viewController.hidesBottomBarWhenPushed = YES;
        
        QCBaseViewController *baseViewC = (QCBaseViewController *)viewController;
        
        if (!baseViewC.navItem.leftBarButtonItem) { // 如果当前控制器没有设置leftBarButtonItem才设置默认的
            baseViewC.navItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
        }
    }
    
    [super pushViewController:viewController animated:animated];
}

- (void)back{
    
    // 判断两种情况: push 和 present
    if ((self.presentedViewController || self.presentingViewController) && self.childViewControllers.count == 1) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }else
        [self popViewControllerAnimated:YES];
}


@end
