//
//  NSString+Empty.h
//  BJTestDemo
//
//  Created by 许宝吉 on 2019/3/11.
//  Copyright © 2019 许宝吉. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Empty)

+ (BOOL)stringWithEmpty:(nullable NSString *)str;

+ (BOOL)stringWithBlankSpace:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
