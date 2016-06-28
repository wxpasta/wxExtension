//
//  NSDateFormatter+WX.m
//  VRMAX
//
//  Created by AngieMita on 16/6/26.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "NSDateFormatter+WX.h"

@implementation NSDateFormatter (WX)

+ (instancetype)wx_dateFormat:(NSString *)dateFormat
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = dateFormat;
    return fmt;
}

+ (NSString *)wx_dateFormat:(NSString *)dateFormat dateChamge:(NSDate *)date
{
    NSDateFormatter *fmt = [NSDateFormatter wx_dateFormat:dateFormat];
    return  [fmt stringFromDate:date];
}



@end
