//
//  AppDelegate.m
//  TableTalkRolePlayingGame
//
//  Created by sillva on 2014/12/27.
//  Copyright (c) 2014年 sillva. All rights reserved.
//

#import "AppDelegate.h"

#import <MagicalRecord/CoreData+MagicalRecord.h>

#import "TRPGTopViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [MagicalRecord setupCoreDataStack];
    
    TRPGTopViewController *topViewController = [[TRPGTopViewController alloc] init];
    UINavigationController *mainNavigationController = [[UINavigationController alloc] initWithRootViewController:topViewController];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = mainNavigationController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [MagicalRecord cleanUp];
}

@end
