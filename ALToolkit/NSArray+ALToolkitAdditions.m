//
//  NSArray+ALToolkitAdditions
//
//  Created by Andy LaVoy on 3/5/13.
//
//

#import "NSArray+ALToolkitAdditions.h"

@implementation NSArray (ALToolkitAdditions)

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


- (NSArray *)al_map:(id (^)(id obj, NSUInteger idx))block {
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:[self count]];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [result addObject:block(obj, idx)];
    }];
    return result;
}


- (NSArray *)al_filter:(id (^)(id obj, NSUInteger idx))block {
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:[self count]];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if (block(obj, idx)) {
            [result addObject:obj];
        }
    }];
    return result;
}


@end
