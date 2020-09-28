//
//  NSString+VMPGetTime.m
//  vmp
//
//  Created by magic-devel on 2020/9/15.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import "NSString+VMPGetTime.h"
#import "NSDateFormatter+CachedDateFormat.h"

@implementation NSString (VMPGetTime)


+ (NSString *)stringWithGetCurrentTime {
    NSDate *date = [NSDate date];
    NSDateFormatter *format1= [NSDateFormatter cachedDateFormatter];
    NSString *dateStr = [format1 stringFromDate:date];
    return dateStr;
}

@end
