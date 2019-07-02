//
//  NSMutableArray+WXCategories.m
//  WXCategories
//
//  Created by 巴糖 on 2018/9/18.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "NSMutableArray+ErrorHandle.h"

@implementation NSMutableArray (WXCategories)

/**
 *  数组中插入数据
 */
- (void)insertObjectVerify:(id)object atIndex:(NSUInteger)index{
    if (index < self.count && object) {
        [self insertObject:object atIndex:index];
    }
}
/**
 *  数组中添加数据
 */
- (void)addObjectVerify:(id)object{
    if (object) {
        [self addObject:object];
    }
}

@end
