//
//  NSUserDefaults+ALToolkitAdditions
//
//  Created by Andy LaVoy on 2/10/13.
//
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (ALToolkitAdditions)

+ (id)objectForKey:(NSString *)defaultName;
+ (void)setObject:(id)object forKey:(NSString *)key completion:(void (^)(void))completionBlock;

@end
