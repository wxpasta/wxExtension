//
//  NSDate+DateFromString.m
//  WXCategories
//
//  Created by 巴糖 on 2019/7/1.
//  Copyright © 2019 巴糖. All rights reserved.
//

#import "NSDate+DateFromString.h"

@implementation NSDate (DateFromString)

// timeInterval - 1554552673
- (NSDate *)dateFromString:(NSString *)timeInterval {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"]];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date = [formatter dateFromString:timeInterval];
    return date;
}

// timeInterval - 2019-04-06 20:11:13
- (NSDate *)strptimeFromString:(NSString *)timeInterval {
    time_t t;
    struct tm tm;
    strptime([timeInterval cStringUsingEncoding:NSUTF8StringEncoding], "%Y-%m-%dT%H:%M:%S%z", &tm);
    tm.tm_isdst = -1;
    t = mktime(&tm);
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:t + [[NSTimeZone localTimeZone] secondsFromGMT]];
    return date;
}
@end
