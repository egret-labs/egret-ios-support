//
//  EgretRuntime.h
//  EgretNativeFramework
//
//  Created by wei huang on 10/30/14.
//  Copyright (c) 2014 egret. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^RequestPromise)(int, NSData *message);
typedef void (^DownloadPromise)(NSString *error);
typedef void (^DownloadProgress)(int received, int length);
typedef void (^ViewAction)();

@interface EgretRuntime : NSObject

@property (copy, nonatomic) DownloadProgress progress;
@property (copy, nonatomic) ViewAction add;
@property (copy, nonatomic) ViewAction remove;

+ (EgretRuntime *)getInstance;

- (void)initWithRect:(CGRect)bounds inViewController:(UIViewController *)controller;
- (void)runWithRoot:(NSString *)egretRoot id:(NSString *)gameId loader:(NSString *)loaderUrl update:(NSString *)updateUrl;
- (void)setDownloadProgress:(DownloadProgress)progress addView:(ViewAction)add removeView:(ViewAction)remove;
- (void)requestLoaderUrl:(NSString *)loaderUrl withData:(NSString *)data promise:(RequestPromise)result;
- (void)onPause;
- (void)onResume;
- (void)onStop;

@end
