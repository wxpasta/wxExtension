//
//  NSDateFormatter+WX.h
//  VRMAX
//
//  Created by AngieMita on 16/6/26.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDateFormatter (WX)

+ (instancetype)wx_dateFormat:(NSString *)dateFormat;

+ (NSString *)wx_stringFromDate:(NSDate *)date dateFormat:(NSString *)dateFormat;
+ (NSString *)wx_stringFromToday:(NSString *)dateFormat;

@end
