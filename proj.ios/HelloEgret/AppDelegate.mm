//
//  AppDelegate.m
//
//  Copyright (c) 2014 egret. All rights reserved.
//

#import "AppDelegate.h"
#import "EgretRuntime.h"
#import "ExternalInterface.h"


class ExternalInterfaceProcess :public IExternalInterface{
    
public:
    void call(const std::string& value){
        NSLog(@"%@", [NSString stringWithUTF8String:value.c_str()]);
        
        ExternalInterface::call("TestExternalInterface", "Hello egret");
    }
};



@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)initUIWindow {
    // Use RootViewController manage EAGLView
    viewController = [[ViewController alloc] initWithNibName:nil bundle:nil];
    viewController.extendedLayoutIncludesOpaqueBars = YES;
    
    [[EgretRuntime getInstance] initWithRect:[self.window bounds] inViewController:viewController];
    // Set RootViewController to window
    [self.window addSubview: viewController.view];
    
    [self.window makeKeyAndVisible];
    [[UIApplication sharedApplication] setStatusBarHidden: YES];
}

- (void)runGame {
    NSString *egretRoot = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *gameId = @"local";
    NSString *gameUrl = @"";
#ifndef USE_GAME_ZIP
    NSString *loaderUrl = @"";
#else
    NSString *loaderUrl = @"game_code.zip";
#endif
    [[EgretRuntime getInstance] runWithRoot:egretRoot id:gameId loader:loaderUrl url:gameUrl];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [self initUIWindow];
    [self runGame];
    
    ExternalInterface::run();
    ExternalInterface::addCallback("TestExternalInterface", new ExternalInterfaceProcess() );
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

@end
