//
//  NSOrderedSet+ALToolkitAdditions.m
//
//  Created by Andy LaVoy on 6/15/13.
//  Copyright (c) 2013 Log Cabin. All rights reserved.
//

#import "NSOrderedSet+ALToolkitAdditions.h"

@implementation NSOrderedSet (ALToolkitAdditions)

- (id)safeObjectAtIndex:(NSUInteger)index {
    id object = nil;
    
    if ([self count] > index) {
        object = [self objectAtIndex:index];
        
        if ([object isEqual:[NSNull null]]) {
            object = nil;
        }
    }
    
    return object;
}

@end
