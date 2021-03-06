//
//  NSDateFormatter+WX.m
//  WXCategories
//
//  Created by 巴糖 on 16/6/26.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "NSDateFormatter+WX.h"

@implementation NSDateFormatter (WX)

+ (instancetype)wx_dateFormat:(NSString *)dateFormat
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = dateFormat;
    return fmt;
}

+ (NSString *)wx_stringFromDate:(NSDate *)date dateFormat:(NSString *)dateFormat
{
    NSDateFormatter *fmt = [NSDateFormatter wx_dateFormat:dateFormat];
    return  [fmt stringFromDate:date];
}

+ (NSString *)wx_stringFromToday:(NSString *)dateFormat
{
    NSString *dateTime = [NSDateFormatter  wx_stringFromDate:[NSDate date] dateFormat:dateFormat];
    return dateTime;
}

@end
