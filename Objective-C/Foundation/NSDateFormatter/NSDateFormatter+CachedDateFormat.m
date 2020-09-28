//
//  NSDateFormatter+CachedDateFormat.m
//  TestAPP
//
//  Created by magic-devel on 2020/9/11.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import "NSDateFormatter+CachedDateFormat.h"

@implementation NSDateFormatter (CachedDateFormat)

static NSDateFormatter *customDateFormatter = nil;

+ (NSDateFormatter *)cachedDateFormatter {
    if (!customDateFormatter) {
        customDateFormatter = [[NSDateFormatter alloc] init];
        [customDateFormatter setLocale:[NSLocale currentLocale]];
        [customDateFormatter setDateFormat: @"YYYY-MM-dd HH:mm:ss"];
    }
    return customDateFormatter;
}

@end
