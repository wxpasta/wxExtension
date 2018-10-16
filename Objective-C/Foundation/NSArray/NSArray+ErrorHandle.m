//
//  NSArray+ErrorHandle.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/18.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import "NSArray+ErrorHandle.h"

@implementation NSArray (ErrorHandle)

/**
 *  防止数组越界
 */

- (nullable id)objectAtIndexVerify:(NSUInteger)index{
    if (index < self.count) {
        return [self objectAtIndex:index];
    }else{
        return nil;
    }
}
/**
 *  防止数组越界
 */
- (nullable id)objectAtIndexedSubscriptVerify:(NSUInteger)idx{
    if (idx < self.count) {
        return [self objectAtIndexedSubscript:idx];
    }else{
        return nil;
    }
}

@end
