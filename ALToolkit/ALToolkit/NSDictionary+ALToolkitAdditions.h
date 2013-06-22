//
//  NSDictionary+ALToolkitAdditions.h
//  Scoreboard
//
//  Created by Andy LaVoy on 6/10/13.
//  Copyright (c) 2013 Log Cabin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (ALToolkitAdditions)

- (id)safeObjectForKey:(NSString *)key class:(Class)class;

@end
