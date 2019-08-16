//
//  NSString+Empty.m
//  BJTestDemo
//
//  Created by 许宝吉 on 2019/3/11.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "NSString+Empty.h"

@implementation NSString (Empty)

+ (BOOL)stringWithEmpty:(nullable NSString *)str{
    if ([str isKindOfClass:[NSString class]] && [str length]){
        return NO;
    }else{
        return YES;
    }
}


+ (BOOL)stringWithBlankSpace:(NSString *)string{
    NSRange range = [string rangeOfString:@" "];
    if (range.location != NSNotFound){
        return YES;
    }else{
        return NO;
    }
}
@end


