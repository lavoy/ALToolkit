//
//  NSString+ALToolkitAdditions.m
//
//  Created by Andy LaVoy on 6/2/13.
//  Copyright (c) 2013 Log Cabin. All rights reserved.
//

#import "NSString+ALToolkitAdditions.h"

@implementation NSString (ALToolkitAdditions)

- (BOOL)containsString:(NSString *)substring {
    return [self rangeOfString:substring].location != NSNotFound;
}

@end
