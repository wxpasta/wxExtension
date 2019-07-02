//
//  NSScanner+WX.m
//  xcode8New
//
//  Created by 巴糖 on 16/6/22.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "NSScanner+WX.h"

@implementation NSScanner (WX)

//判断是否为整形：
+ (BOOL)isPureInt:(NSString*)string
{
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return[scan scanInt:&val] && [scan isAtEnd];
}

//判断是否为浮点形：
+ (BOOL)isPureFloat:(NSString*)string
{
    NSScanner* scan = [NSScanner scannerWithString:string];
    float val;
    return[scan scanFloat:&val] && [scan isAtEnd];
}

@end
