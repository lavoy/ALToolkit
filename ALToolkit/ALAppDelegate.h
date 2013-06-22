//
//  ALAppDelegate.h
//  ALToolkit
//
//  Created by Andy LaVoy on 6/22/13.
//  Copyright (c) 2013 Log Cabin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ALViewController;

@interface ALAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ALViewController *viewController;

@end
