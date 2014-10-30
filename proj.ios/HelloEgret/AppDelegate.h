//
//  AppDelegate.h
//  
//  Copyright (c) 2014 egret. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITextFieldDelegate> {
    ViewController *viewController;
}

@property (strong, nonatomic) UIWindow *window;


@end

