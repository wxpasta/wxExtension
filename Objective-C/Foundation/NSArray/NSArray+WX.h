//
//  NSArray+WX.h
//  WXCategories
//
//  Created by 巴糖 on 16/7/10.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import Foundation;

@interface NSArray (WX)

/**
 *  获取文件的全路径的数组
 */
+ (nullable NSArray *)wx_arrayWithPathForResource:(nullable NSString *)name;
+ (nullable NSArray *)wx_arrayWithPathForResource:(nullable NSString *)name ofType:(nullable NSString *)ext;

+ (nullable instancetype)wx_arrayLastObjectWithLoadNibNamed:(nonnull NSString *)nibName;
+ (nullable instancetype)wx_arrayLastObjectWithLoadNibNamedClass:(nonnull Class)coustomClass;

+ (nullable instancetype)wx_arrayFirstObjectWithLoadNibNamed:(nonnull NSString *)nibName;
+ (nullable instancetype)wx_arrayFirstObjectWithLoadNibNamedClass:(nonnull Class)coustomClass;

@end
