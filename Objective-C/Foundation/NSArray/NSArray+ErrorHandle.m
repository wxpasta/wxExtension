//
//  NSArray+ErrorHandle.m
//  WXCategories
//
//  Created by 巴糖 on 2018/9/18.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "NSArray+ErrorHandle.h"

@implementation NSArray (ErrorHandle)

- (nullable id)objectSafeAtIndex:(NSUInteger)index {
    if (index < self.count) {
        return [self objectAtIndex:index];
    }else{
        return nil;
    }
}

- (nullable id)objectSafeAtIndexedSubscript:(NSUInteger)idx {
    if (idx < self.count) {
        return [self objectAtIndexedSubscript:idx];
    }else{
        return nil;
    }
}

@end
