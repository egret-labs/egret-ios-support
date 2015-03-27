//
//  AppDelegate.h
//  
//  Copyright (c) 2014 egret. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "EgretRuntime.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITextFieldDelegate> {
    ViewController *viewController;
    NSString *egretRoot;
    NSString *gameId;
    NSString *loaderUrl;
    NSString *updateUrl;
}

@property (strong, nonatomic) UIWindow *window;


@end

