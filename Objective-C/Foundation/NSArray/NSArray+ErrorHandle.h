//
//  NSArray+ErrorHandle.h
//  WXCategories
//
//  Created by 巴糖 on 2018/9/18.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

/** 防止越界导致的crash */
@interface NSArray (ErrorHandle)

- (nullable id)objectSafeAtIndex:(NSUInteger)index;


- (nullable id)objectSafeAtIndexedSubscript:(NSUInteger)idx;

@end

NS_ASSUME_NONNULL_END
