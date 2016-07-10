//
//  NSArray+WX.h
//  VRMAX
//
//  Created by AngieMita on 16/7/10.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (WX)

/**
 *  获取文件的全路径的数组
 *
 *  @param name
 *
 *  @return
 */
+ (nullable NSArray *)wx_arrayWithPathForResource:(nullable NSString *)name;
+ (nullable NSArray *)wx_arrayWithPathForResource:(nullable NSString *)name ofType:(nullable NSString *)ext;

+ (nullable instancetype)wx_arrayLastObjectWithLoadNibNamed:(nonnull NSString *)nibName;
+ (nullable instancetype)wx_arrayLastObjectWithLoadNibNamedClass:(nonnull Class)coustomClass;

+ (nullable instancetype)wx_arrayFirstObjectWithLoadNibNamed:(nonnull NSString *)nibName;
+ (nullable instancetype)wx_arrayFirstObjectWithLoadNibNamedClass:(nonnull Class)coustomClass;

@end
