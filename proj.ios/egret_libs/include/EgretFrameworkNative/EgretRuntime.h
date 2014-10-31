//
//  EgretRuntime.h
//  EgretNativeFramework
//
//  Created by wei huang on 10/30/14.
//  Copyright (c) 2014 egret. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface EgretRuntime : NSObject

+ (EgretRuntime *)getInstance;


- (void)initWithRect:(CGRect)bounds inViewController:(UIViewController *)controller;
- (void)run;

@end
