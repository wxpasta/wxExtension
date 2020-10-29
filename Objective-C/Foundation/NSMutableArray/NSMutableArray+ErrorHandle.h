//
//  NSMutableArray+ErrorHandle.h
//  WXCategories
//
//  Created by 巴糖 on 2018/9/18.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

/** 防止越界导致的crash */
@interface NSMutableArray (ErrorHandle)

/**
 数组中插入数据
 
 @param object 数据
 @param index 下标
 */
- (void)insertSafeObject:(id)object atIndex:(NSUInteger)index;
/**
 数组中添加数据
 
 @param object 数据
 */
- (void)addSafeObject:(id)object;

@end

NS_ASSUME_NONNULL_END
