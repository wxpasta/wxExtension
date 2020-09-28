//
//  NSDateFormatter+WX.h
//  WXCategories
//
//  Created by 巴糖 on 16/6/26.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import Foundation;

@interface NSDateFormatter (WX)

+ (instancetype)wx_dateFormat:(NSString *)dateFormat;

+ (NSString *)wx_stringFromDate:(NSDate *)date dateFormat:(NSString *)dateFormat;
+ (NSString *)wx_stringFromToday:(NSString *)dateFormat;

@end
