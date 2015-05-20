//
//  AppDelegate.m
//
//  Copyright (c) 2014 egret. All rights reserved.
//

#import "AppDelegate.h"
#import "EgretRuntime.h"
#import "ExternalInterface.h"


//TODO: egret publish之后，修改以下常量为生成的game_code名
#define EGRET_PUBLISH_ZIP @"game_code_xxxx.zip"

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

- (void)setLoaderUrl:(int)mode {
    switch (mode) {
        case 3:
            // local DEBUG mode
            // 本地DEBUG模式，发布请使用0本地zip，或者1网络获取zip
            loaderUrl = @"";
            updateUrl = @"";
            break;
        case 2:
            // http request game configure file, refer to *egret.json*
            //     in project
            // 请求服务器配置文件，请参考工程中的egret.json来部署
            loaderUrl = @"http://www.example.com/egret.json";
            updateUrl = @"";
            break;
        case 1:
            // http request zip RELEASE mode, use permission INTERNET
            // 请求网络zip包发布模式，需要权限 INTERNET
            updateUrl = @"http://wwww.example.com";
            loaderUrl = [updateUrl stringByAppendingString:EGRET_PUBLISH_ZIP];
            break;
        default:
            // local zip RELEASE mode, default mode, `egret publish -compile --runtime native`
            // 私有空间zip包发布模式, 默认模式, `egret publish -compile --runtime native`
            updateUrl = @"";
            loaderUrl = EGRET_PUBLISH_ZIP;
            break;
    }
}

- (void)runGame {
    egretRoot = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    gameId = @"local";

    // TODO update your load mode
    [self setLoaderUrl:3];

    [[EgretRuntime getInstance] runWithRoot:egretRoot id:gameId loader:loaderUrl update:updateUrl];
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
    [[EgretRuntime getInstance] onPause];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    [[EgretRuntime getInstance] onPause];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    [[EgretRuntime getInstance] onResume];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    [[EgretRuntime getInstance] onResume];
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    [[EgretRuntime getInstance] onPause];
}

@end
