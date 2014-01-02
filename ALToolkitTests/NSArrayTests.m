//
//  NSArrayTests.m
//  ALToolkit
//
//  Created by Andy LaVoy on 6/22/13.
//  Copyright (c) 2013 Log Cabin. All rights reserved.
//

#import "NSArrayTests.h"

@interface NSArrayTests ()

@property (nonatomic, copy) NSArray *array;

@end

@implementation NSArrayTests

- (void)setUp
{
    NSMutableArray *array = [NSMutableArray array];
    
    for (NSInteger i = 0; i < 10; i++) {
        [array addObject:@(i)];
    };
    
    self.array = array;
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testMap
{
    NSArray *mappedArray = [self.array al_map:^id(NSNumber *num) {
        NSInteger integer = [num integerValue];
        NSInteger incrementedInteger = integer += 5;
        
        if (incrementedInteger < 10) {
            return @(incrementedInteger);
        } else {
            return nil;
        }
    }];
    
    STAssertEquals([mappedArray count], (NSUInteger) 5, nil);
    STAssertEqualObjects(mappedArray[0], @(5), nil);
    STAssertEqualObjects(mappedArray[1], @(6), nil);
    STAssertEqualObjects(mappedArray[2], @(7), nil);
    STAssertEqualObjects(mappedArray[3], @(8), nil);
    STAssertEqualObjects(mappedArray[4], @(9), nil);
}

- (void)testFilter
{
    NSArray *filteredArray = [self.array al_filter:^BOOL(NSNumber *num) {
        return [num integerValue] < 5;
    }];
    
    STAssertEquals([filteredArray count], (NSUInteger) 5, nil);
    STAssertEqualObjects(filteredArray[0], @(0), nil);
    STAssertEqualObjects(filteredArray[1], @(1), nil);
    STAssertEqualObjects(filteredArray[2], @(2), nil);
    STAssertEqualObjects(filteredArray[3], @(3), nil);
    STAssertEqualObjects(filteredArray[4], @(4), nil);
}

- (void)testFind
{
    NSNumber *foundObject0 = [self.array al_find:^BOOL(NSNumber *num) {
        return [num integerValue] < 5;
    }];
    
    NSNumber *foundObject6 = [self.array al_find:^BOOL(NSNumber *num) {
        return [num integerValue] > 5;
    }];
    
    NSNumber *foundObject20 = [self.array al_find:^BOOL(NSNumber *num) {
        return [num integerValue] > 19;
    }];
    
    STAssertEqualObjects(foundObject0, @(0), nil);
    STAssertEqualObjects(foundObject6, @(6), nil);
    STAssertNil(foundObject20, nil);
}

- (void)testSafeObject
{
    STAssertEqualObjects([self.array safeObjectAtIndex:0], @(0), nil);
    STAssertEqualObjects([self.array safeObjectAtIndex:2], @(2), nil);
    STAssertNil([self.array safeObjectAtIndex:20], nil);
}

@end
