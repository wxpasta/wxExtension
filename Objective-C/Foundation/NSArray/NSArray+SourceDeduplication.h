//
//  NSArray+SourceDeduplication.h
//  WXCategories
//
//  Created by 巴糖 on 2019/7/1.
//  Copyright © 2019 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (SourceDeduplication)


/**
 数组去重（利用 NSSet 的特性，NSSet 是无序、没有重复元素的数组）

 @param oldArray oldArray description
 @return return value description
 */
- (NSArray *)duplicateRemovalWithArray:(NSArray *)oldArray;

@end

NS_ASSUME_NONNULL_END
