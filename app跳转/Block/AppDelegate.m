//
//  AppDelegate.m
//  Block
//
//  Created by fuchun on 2017/5/25.
//  Copyright © 2017年 le. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()
@property (nonatomic, strong) ViewController *vc;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    self.vc = [[ViewController alloc] init];
//    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:self.vc];
//    self.window.rootViewController = nc;
    return YES;
}

//- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
//{
//    /*
//     self.rvc = [[RootViewController alloc] init];
//     UINavigationController *nc = [[UINavigation
//     
//     self.rvc.textField.text = [[url host] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
//     return YES;
//     */
//    // 1.获取导航栏控制器
//    UINavigationController *rootNav = (UINavigationController *)self.window.rootViewController;
//    // 2.获得主控制器
//    ViewController *mainVc = [rootNav.childViewControllers firstObject];
//    self.vc.string = [[url host]stringByRemovingPercentEncoding];
//    NSLog(@"mainVc.string=%@",mainVc.string);
//    // 3.每次跳转前必须是在跟控制器(细节)
////    [rootNav popToRootViewControllerAnimated:NO];
////    
////    // 4.根据字符串关键字来跳转到不同页面
////    if ([url.absoluteString containsString:@"Page1"]) { // 跳转到应用App-B的Page1页面
////        // 根据segue标示进行跳转
////        [mainVc performSegueWithIdentifier:@"homeToPage1" sender:nil];
////    } else if ([url.absoluteString containsString:@"Page2"]) { // 跳转到应用App-B的Page2页面
////        // 根据segue标示进行跳转
////        [mainVc performSegueWithIdentifier:@"homeToPage2" sender:nil];
////    }
//    
//    return YES;
//}

////如果是通过URL打开的本应用，则下面的方法会被执行
-(BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    //获取window中加载的根视图,也就是那个导航
    UINavigationController *navi = (UINavigationController *)self.window.rootViewController;

    ViewController *vc = (ViewController *)navi.topViewController;
    NSString *test = url.host; // 这就是参数
    NSString *urlString = [url absoluteString];
    NSLog(@"test = %@",test);
    NSLog(@"url = %@", url);
    NSLog(@"urlString = %@",urlString);
    vc.ttLab.text = test;
    vc.ttLab.frame = CGRectMake(150, 64, 160, 50);
//    test = 11112
//    url = Block://11112
//    urlString = Block://11112
    //1.获取请求的URL地址
    
    
    //2.判断地址中包含的信息为bbb则打开第二个页面
//    if ([urlString hasPrefix:@"your://bbb"])
//    {
//        [vc performSegueWithIdentifier:@"pushWhiteSegue" sender:nil];
//    }
//    
    return YES;
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
