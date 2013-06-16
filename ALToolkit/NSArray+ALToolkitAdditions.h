//
//  NSArray+ALToolkitAdditions
//
//  Created by Andy LaVoy on 3/5/13.
//
//

#import <Foundation/Foundation.h>

@interface NSArray (ALToolkitAdditions)

- (id)safeObjectAtIndex:(NSUInteger)index;
- (NSArray *)al_map:(id (^)(id obj, NSUInteger idx))block;
- (NSArray *)al_filter:(id (^)(id obj, NSUInteger idx))block;

@end
