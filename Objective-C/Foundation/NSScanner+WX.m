//
//  NSScanner+WX.m
//  
//
//  Created by 巴糖 on 16/6/22.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "NSScanner+WX.h"

@implementation NSScanner (WX)

+ (BOOL)isPureInt:(NSString*)string
{
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return[scan scanInt:&val] && [scan isAtEnd];
}

+ (BOOL)isPureFloat:(NSString*)string
{
    NSScanner* scan = [NSScanner scannerWithString:string];
    float val;
    return[scan scanFloat:&val] && [scan isAtEnd];
}

@end
