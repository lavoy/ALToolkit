//
//  ALToolkit
//
//  Created by Andy LaVoy on 5/26/13.
//  Copyright (c) 2013 Log Cabin. All rights reserved.
//

#import "NSArray+ALToolkitAdditions.h"
#import "NSDictionary+ALToolkitAdditions.h"
#import "NSOrderedSet+ALToolkitAdditions.h"
#import "NSUserDefaults+ALToolkitAdditions.h"
#import "UIColor+ALToolkitAdditions.h"
#import "UIView+ALToolkitAdditions.h"
#import "UIScreen+ALToolkitAdditions.h"
#import "NSString+ALToolkitAdditions.h"

static UIViewAutoresizing const UIViewAutoresizingFlexibleWidthAndHeight =
    UIViewAutoresizingFlexibleWidth |
    UIViewAutoresizingFlexibleHeight;

static UIViewAutoresizing const UIViewAutoresizingFlexibleAllMargins =
    UIViewAutoresizingFlexibleLeftMargin |
    UIViewAutoresizingFlexibleRightMargin |
    UIViewAutoresizingFlexibleTopMargin |
    UIViewAutoresizingFlexibleBottomMargin;

#define SYSTEM_VERSION_AT_LEAST(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)

