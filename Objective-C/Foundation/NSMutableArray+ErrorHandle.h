//
//  NSMutableArray+WXCategories.h
//  WXCategories
//
//  Created by 巴糖 on 2018/9/18.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableArray (WXCategories)

/**
 数组中插入数据
 
 @param object 数据
 @param index 下标
 */
- (void)insertObjectVerify:(id)object atIndex:(NSUInteger)index;
/**
 数组中添加数据
 
 @param object 数据
 */
- (void)addObjectVerify:(id)object;

@end

NS_ASSUME_NONNULL_END
