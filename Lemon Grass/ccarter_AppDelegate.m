//
//  ccarter_AppDelegate.m
//  Lemon Grass
//
//  Created by Chris Carter on 3/23/14.
//  Copyright (c) 2014 CCarterOnline. All rights reserved.
//

#import "ccarter_AppDelegate.h"
#import "ccarter_myTableView.h"

@implementation ccarter_AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    //UIViewController *myTableViewController = [[ccarter_myTableView alloc]initWithStyle:UITableViewStyleGrouped];
    //self.window.rootViewController = myTableViewController;
    
    
    //Initialize main view controller
    UITableViewController *lists = [[ccarter_myTableView alloc]initWithStyle:UITableViewStylePlain];
    
    //Initialize the navigation controller
    UINavigationController *navigationController = [[UINavigationController alloc]initWithRootViewController:lists];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //Configure Window
    [self.window setRootViewController:navigationController];
    self.window.backgroundColor = [UIColor blackColor];
    [self.window makeKeyAndVisible];
    
    //[[UINavigationBar appearance] setBarTintColor:[UIColor yellowColor]];
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"logo.png"] forBarMetrics:UIBarMetricsDefault];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end