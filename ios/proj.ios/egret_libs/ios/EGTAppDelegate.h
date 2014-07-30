//
//  EGTAppDelegate.h
//  EgretNativeFramework
//
//  Created by milu on 14-6-10.
//  Copyright (c) 2014年 egret. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

//@interface EGTAppDelegate : UIResponder <UIApplicationDelegate>
@interface EGTAppDelegate : NSObject <UIAccelerometerDelegate , UIAlertViewDelegate ,
UITextFieldDelegate , UIApplicationDelegate>{

    RootViewController *viewController;
}

@property (strong, nonatomic) UIWindow *window;

@end
