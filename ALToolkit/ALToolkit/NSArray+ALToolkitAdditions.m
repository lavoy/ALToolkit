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


- (NSArray *)al_map:(id (^)(id object))mapBlock {
    NSMutableArray *resultArray = [NSMutableArray arrayWithCapacity:[self count]];
    
    for (id object in self) {
        id resultObject = mapBlock(object);
        if (resultObject) {
            [resultArray addObject:resultObject];
        }
    }
    
    return resultArray;
}


- (NSArray *)al_filter:(BOOL (^)(id object))filterBlock {
    return [self al_map:^id(id object) {
        return filterBlock(object) ? object : nil;
    }];
}


- (id)al_find:(BOOL (^)(id object))findBlock {
    for (id object in self) {
        if (findBlock(object)) {
            return object;
        }
    }
    
    return nil;
}


@end
