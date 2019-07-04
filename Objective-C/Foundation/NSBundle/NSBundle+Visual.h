//
//  NSBundle+Visual.h
//  WXCategories
//
//  Created by 巴糖 on 2018/7/29.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (Visual)

+ (nullable NSArray *)wx_bundleLoadNibNamed:(NSString *)name;

+ (id _Nullable)wx_bundleLoadNibFirstNamed:(NSString *)name;

+ (id _Nullable)wx_bundleLoadNibLastNamed:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
