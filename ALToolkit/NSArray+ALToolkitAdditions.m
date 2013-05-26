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


@end
