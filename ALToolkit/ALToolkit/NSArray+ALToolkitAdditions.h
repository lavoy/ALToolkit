//
//  NSArray+ALToolkitAdditions
//
//  Created by Andy LaVoy on 3/5/13.
//
//

#import <Foundation/Foundation.h>

@interface NSArray (ALToolkitAdditions)

- (id)safeObjectAtIndex:(NSUInteger)index;
- (NSArray *)al_map:(id (^)(id object))mapBlock;
- (NSArray *)al_filter:(BOOL (^)(id object))filterBlock;

@end
