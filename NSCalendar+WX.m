//
//  NSCalendar+WX.m
//  VRMAX
//
//  Created by AngieMita on 16/6/12.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "NSCalendar+WX.h"

@implementation NSCalendar (WX)

+ (instancetype)calendar
{
    if ([NSCalendar respondsToSelector:@selector(calendarWithIdentifier:)]) {
        return [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    } else {
        return [NSCalendar currentCalendar];
    }
}

@end
