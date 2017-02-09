//
//  TRZXNavigationController.m
//  TRZX
//
//  Created by N年後 on 16/8/19.
//  Copyright © 2016年 Tiancaila. All rights reserved.
//

#import "TRZXNavigationController.h"

@interface TRZXNavigationController ()
@end

@implementation TRZXNavigationController

- (void)viewDidLoad{
    [super viewDidLoad];
}
/**
 * 可以在这个方法中拦截所有push进来的控制器
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count > 0) { // 如果push进来的不是第一个控制器

        if ([viewController isKindOfClass:NSClassFromString(@"UIViewController")]) {

        }else{


        }
        // 隐藏tabbar
        viewController.hidesBottomBarWhenPushed = YES;
    }

    // 这句super的push要放在后面, 让viewController可以覆盖上面设置的leftBarButtonItem
    [super pushViewController:viewController animated:animated];
    
}



@end
