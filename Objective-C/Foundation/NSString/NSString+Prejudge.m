//
//  NSString+Prejudge.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/25.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import "NSString+Prejudge.h"

@implementation NSString (Prejudge)

+ (BOOL)isEmptyString:(NSString *)string{
    // 去掉字符串中的空格
    NSString * newString = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    // 判断是否为空字符串
    if ([newString isEqualToString:@""]) {
        return YES;
    }
    // 判断字符串长度
    if (newString.length <= 0) {
        return YES;
    }
    return NO;
}

@end
