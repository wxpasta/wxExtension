//
//  NSString+Prejudge.h
//  WXCategories
//
//  Created by 许宝吉 on 2018/9/25.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Prejudge)

/**
 判断字符串是否为空
 
 @param string 字符串
 @return 是否
 */
+ (BOOL)isEmptyString:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
