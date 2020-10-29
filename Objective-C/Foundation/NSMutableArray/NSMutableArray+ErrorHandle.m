//
//  NSMutableArray+ErrorHandle.m
//  WXCategories
//
//  Created by 巴糖 on 2018/9/18.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "NSMutableArray+ErrorHandle.h"

@implementation NSMutableArray (ErrorHandle)

- (void)insertSafeObject:(id)anObject atIndex:(NSUInteger)index {
    if (index < self.count && anObject) {
        [self insertObject:anObject atIndex:index];
    }
}

- (void)addSafeObject:(id)anObject{
    if (anObject) {
        [self addObject:anObject];
    }
}
- (void)removeSafeObject:(id)anObject{
    if (anObject) {
        [self removeObject:anObject];
    }
}
@end
