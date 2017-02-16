//
//  AppDelegate.m
//  TRZXKit
//
//  Created by N年後 on 2017/2/9.
//  Copyright © 2017年 TRZX. All rights reserved.
//

#import "AppDelegate.h"
#import "TRZXKit.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self appConfig];
    return YES;
}

-(void)appConfig{


    //Nav文字属性
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor colorWithWhite:0.0f alpha:1.0f];
    shadow.shadowOffset = CGSizeMake(0, 0);
    [[UINavigationBar appearance] setTitleTextAttributes:@{
                                                           NSForegroundColorAttributeName: [UIColor trzx_NavTitleColor],
                                                           NSShadowAttributeName: [[NSShadow alloc] init],
                                                           NSFontAttributeName: [UIFont boldSystemFontOfSize:17]
                                                           }];


    //Nav Item文字属性
    [[UIBarButtonItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor trzx_NavTitleColor],NSForegroundColorAttributeName, [UIFont systemFontOfSize:17],NSFontAttributeName , nil] forState:0];

    // 标题颜色
    [[UINavigationBar appearance] setTintColor:[UIColor  trzx_NavTitleColor]];

    // Nav背景颜色
    [[UINavigationBar appearance] setBarTintColor:[UIColor trzx_NavigationBarColor]];


    // 返回按钮图片
    [[UINavigationBar appearance] setBackIndicatorImage:[UIImage imageNamed:@"btn_back"]];
    [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"btn_back"]];


    self.window.backgroundColor = [UIColor whiteColor]; // 解决 push/pop 导航栏黑色阴影问题
    
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
