#import <Foundation/Foundation.h>

@interface NSDate (WX)

/***  是否为今年*/
- (BOOL)isThisYear;

/***  是否为今天*/
- (BOOL)isToday;
- (BOOL)isTodayWithTimeInterval:(NSTimeInterval)time;

/***  是否为昨天*/
- (BOOL)isYesterday;

/***  是否为明天*/
- (BOOL)isTomorrow;


+ (instancetype)wx_1970;
+ (instancetype)wx_Today;

/**
 字符串转 NSDate

 @param timeStr 字符串时间
 @param format 转化格式 如yyyy-MM-dd HH:mm:ss,即2015-07-15 15:00:00
 @return NSDate
 */
+ (NSDate *)dateFromString:(NSString *)timeStr
                    format:(NSString *)format;

/**
 *  NSDate转时间戳
 *
 *  @param date 字符串时间
 *
 *  @return 返回时间戳
 */
+ (NSInteger)cTimestampFromDate:(NSDate *)date;

/**
 *  字符串转时间戳
 *
 *  @param timeStr 字符串时间
 *  @param format  转化格式 如yyyy-MM-dd HH:mm:ss,即2015-07-15 15:00:00
 *
 *  @return 返回时间戳的字符串
 */
+(NSInteger)cTimestampFromString:(NSString *)timeStr
                          format:(NSString *)format;


/**
 *  时间戳转字符串
 *
 *  @param timeStamp 时间戳
 *  @param format    转化格式 如yyyy-MM-dd HH:mm:ss,即2015-07-15 15:00:00
 *
 *  @return 返回字符串格式时间
 */
+ (NSString *)dateStrFromCstampTime:(NSInteger)timeStamp
                     withDateFormat:(NSString *)format;

/**
 *  NSDate转字符串
 *
 *  @param date   NSDate时间
 *  @param format 转化格式 如yyyy-MM-dd HH:mm:ss,即2015-07-15 15:00:00
 *
 *  @return 返回字符串格式时间
 */
+ (NSString *)datestrFromDate:(NSDate *)date
               withDateFormat:(NSString *)format;
@end
