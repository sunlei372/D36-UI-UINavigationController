//
//  AppDelegate.m
//  D36-UI-UINavigationController导航
//
//  Created by 孙磊 on 16/4/6.
//  Copyright © 2016年 sunlei. All rights reserved.
//

#import "AppDelegate.h"
#import "SLRedViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //导航控制器
    [self UpNavigationController];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark- 设置窗体
-(void)upWindow{
    //1.设置window
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    //2.设置viewcontroller
    SLRedViewController *redView=[[SLRedViewController alloc]init];
    self.window.rootViewController=redView;
    
    //3.设置主窗体
    [self.window makeKeyAndVisible];

}

#pragma mark- 设置导航
-(void)UpNavigationController{
    
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    SLRedViewController *redView=[[SLRedViewController alloc]init];
    
    UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:redView];
    //UINavigationController *nav=[[UINavigationController alloc]init];

    nav.view.backgroundColor=[UIColor blueColor];
    
    
    self.window.rootViewController=nav;
    
    [self.window makeKeyAndVisible];
    
}

@end
