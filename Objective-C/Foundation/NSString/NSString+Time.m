//
//  NSString+Time.m
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/21.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "NSString+Time.h"

@implementation NSString (Time)

+ (NSString *)nemo_stringWithDuration:(NSUInteger)duration{
    long hour =  duration / 3600;
    long minute = (duration % 3600)/60;
    long second = duration % 60;
    NSString *timeString = nil;
    timeString = [NSString stringWithFormat:@"%02ld:%02ld:%02ld", hour, minute, second];
    return timeString;
}

@end
