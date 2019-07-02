//
//  NSString+Prejudge.m
//  WXCategories
//
//  Created by 巴糖 on 2018/9/25.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "NSString+Prejudge.h"

@implementation NSString (Prejudge)

+ (BOOL)isEmptyString:(NSString *)string{
    if (string == nil || string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    return NO;
}

@end
