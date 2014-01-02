//
//  NSUserDefaults+ALToolkitAdditions
//
//  Created by Andy LaVoy on 2/10/13.
//
//

#import "NSUserDefaults+ALToolkitAdditions.h"

@implementation NSUserDefaults (ALToolkitAdditions)

+ (id)objectForKey:(NSString *)defaultName {
    return [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
}


+ (void)setObject:(id)object forKey:(NSString *)key completion:(void (^)(void))completionBlock {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        [[NSUserDefaults standardUserDefaults] setObject:object forKey:key];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        if (completionBlock) {
            dispatch_async(dispatch_get_main_queue(), ^{
                completionBlock();
            });
        }
    });
}


+ (void)setObjectsForKeys:(NSDictionary *)dictionary completion:(void (^)(void))completionBlock {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        [dictionary enumerateKeysAndObjectsUsingBlock:^(id key, id object, BOOL *stop) {
            [[NSUserDefaults standardUserDefaults] setObject:object forKey:key];
        }];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        if (completionBlock) {
            dispatch_async(dispatch_get_main_queue(), ^{
                completionBlock();
            });
        }
    });
}


@end
