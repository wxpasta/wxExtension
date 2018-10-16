//
//  NSArray+ErrorHandle.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/18.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (ErrorHandle)

/**
 为数组分类添加的方法  可以在应用中直接调用 可以防止数组越界导致的crash
 
 @param index 传入的取值下标
 @return id类型的数据
 */
- (nullable id)objectAtIndexVerify:(NSUInteger)index;

- (nullable id)objectAtIndexedSubscriptVerify:(NSUInteger)idx;

@end

NS_ASSUME_NONNULL_END