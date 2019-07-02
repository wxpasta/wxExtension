//
//  NSDictionary+WX.h
//  WXCategories
//
//  Created by 巴糖 on 16/7/10.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import Foundation;

@interface NSDictionary (WX)

/**
 *  获取文件的全路径的字典
 */
+ (nullable NSDictionary *)wx_dictionaryWithPathForResource:(nullable NSString *)name;
+ (nullable NSDictionary *)wx_dictionaryWithPathForResource:(nullable NSString *)name ofType:(nullable NSString *)ext;

@end
