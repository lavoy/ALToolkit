//
//  NSDictionary+ALToolkitAdditions.m
//  Scoreboard
//
//  Created by Andy LaVoy on 6/10/13.
//  Copyright (c) 2013 Log Cabin. All rights reserved.
//

#import "NSDictionary+ALToolkitAdditions.h"

@implementation NSDictionary (ALToolkitAdditions)

- (id)safeObjectForKey:(NSString *)key class:(Class)class {
    id obj = nil;
    if ([self isKindOfClass:[NSDictionary class]]) {
        if ([[self objectForKey:key] isKindOfClass:class]) {
            obj = [self objectForKey:key];
        }
    }
    return obj;
}

@end
