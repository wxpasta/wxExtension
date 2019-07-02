//
//  NSObject+IsObject.h
//  WXCategories
//
//  Created by 巴糖 on 2018/10/15.
//  Copyright © 2018 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (IsObject)

/**
 判断一个对象是否是非空数组
 
 @param object 对象
 @return id类型的数据
 */
- (BOOL)isArrayValueOfObject:(id)object;

/**
 判断一个对象是否是非空字典
 
 @param object 对象
 @return id类型的数据
 */
- (BOOL)isDictionaryValueOfObject:(id)object;

@end

NS_ASSUME_NONNULL_END
