//
//  NSString+Base64.h
//  WXCategories
//
//  Created by 巴糖 on 2018/9/25.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Base64)

/**
 base64 编码
 
 @param string String
 @return base64 String
 */
+ (nullable NSString *)base64EncodeWithString:(NSString *)string;

/**
 base64 解码
 
 @param base64String base64 String
 @return return String
 */
+ (nullable NSString *)base64DecodeWithString:(NSString *)base64String;


@end

NS_ASSUME_NONNULL_END
