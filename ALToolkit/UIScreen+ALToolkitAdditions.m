//
//  UIScreen+ALToolkitAdditions.m
//
//  Created by Andy LaVoy on 5/29/13.
//  Copyright (c) 2013 Log Cabin. All rights reserved.
//

#import "UIScreen+ALToolkitAdditions.h"

@implementation UIScreen (ALToolkitAdditions)

+ (BOOL)isRetina {
    return [UIScreen mainScreen].scale > 1.0;
}

@end
