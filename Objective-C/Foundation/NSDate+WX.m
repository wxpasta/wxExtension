#import "NSDate+WX.h"
#import "NSCalendar+WX.h"

static NSDateFormatter *dateFormatter;

@implementation NSDate (WX)

- (BOOL)isThisYear
{
    // 判断self这个日期是否为今年
    NSCalendar *calendar = [NSCalendar calendar];
    // 年
    NSInteger selfYear = [calendar component:NSCalendarUnitYear fromDate:self];
    NSInteger nowYear = [calendar component:NSCalendarUnitYear fromDate:[NSDate date]];
    
    return selfYear == nowYear;
}

- (BOOL)isToday
{
    // 判断self这个日期是否为今天
    NSCalendar *calendar = [NSCalendar calendar];
    
    // 获得年月日元素
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *selfCmps = [calendar components:unit fromDate:self];
    NSDateComponents *nowCmps = [calendar components:unit fromDate:[NSDate date]];
    
    return selfCmps.year == nowCmps.year
    && selfCmps.month == nowCmps.month
    && selfCmps.day == nowCmps.day;
}

- (BOOL)isTodayWithTimeInterval:(NSTimeInterval )time
{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    NSCalendar *cal = [NSCalendar currentCalendar];
    // 指定日历单位，如日期和月份。(这里指定了年月日，还有其他字段添加单位.特别齐全 ：世纪，年月日时分秒等等等)
    NSCalendarUnit dayInfoUnits  = NSCalendarUnitEra | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *components = [cal components:dayInfoUnits fromDate:[NSDate date]];
    NSDate *today = [cal dateFromComponents:components];
    components = [cal components:dayInfoUnits fromDate:date];
    NSDate *otherDate = [cal dateFromComponents:components];
    if([today isEqualToDate:otherDate]) {
        return true;
    }
    return false;
}

- (BOOL)isYesterday
{
    // 判断self这个日期是否为昨天
    
    // self == 2015-10-31 23:07:08 -> 2015-10-31 00:00:00
    // now  == 2015-11-01 14:39:20 -> 2015-11-01 00:00:00
    
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyyMMdd";
    
    NSString *selfString = [fmt stringFromDate:self]; // 20151031
    NSString *nowString = [fmt stringFromDate:[NSDate date]]; // 20151101
    
    NSDate *selfDate = [fmt dateFromString:selfString]; // 2015-10-31 00:00:00
    NSDate *nowDate = [fmt dateFromString:nowString]; // 2015-11-01 00:00:00
    
    NSCalendar *calendar = [NSCalendar calendar];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *cmps = [calendar components:unit fromDate:selfDate toDate:nowDate options:0];
    
    return cmps.year == 0
    && cmps.month == 0
    && cmps.day == 1;
}

- (BOOL)isTomorrow
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyyMMdd";
    
    NSString *selfString = [fmt stringFromDate:self]; // 20151031
    NSString *nowString = [fmt stringFromDate:[NSDate date]]; // 20151101
    
    NSDate *selfDate = [fmt dateFromString:selfString]; // 2015-10-31 00:00:00
    NSDate *nowDate = [fmt dateFromString:nowString]; // 2015-11-01 00:00:00
    
    NSCalendar *calendar = [NSCalendar calendar];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *cmps = [calendar components:unit fromDate:selfDate toDate:nowDate options:0];
    
    return cmps.year == 0
    && cmps.month == 0
    && cmps.day == -1;
}


+ (instancetype)wx_1970
{
    return [NSDate dateWithTimeIntervalSince1970:0];
}

+ (instancetype)wx_Today
{
    return [NSDate date];
}


+(NSDateFormatter *)defaultFormatter
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dateFormatter = [[NSDateFormatter alloc]init];
    });
    return dateFormatter;
}

+ (NSDate *)dateFromString:(NSString *)timeStr
                    format:(NSString *)format
{
    NSDateFormatter *dateFormatter = [NSDate defaultFormatter];
    [dateFormatter setDateFormat:format];
    NSDate *date = [dateFormatter dateFromString:timeStr];
    return date;
}

+ (NSInteger)cTimestampFromDate:(NSDate *)date
{
    return (long)[date timeIntervalSince1970];
}


+(NSInteger)cTimestampFromString:(NSString *)timeStr
                          format:(NSString *)format
{
    NSDate *date = [NSDate dateFromString:timeStr format:format];
    return [NSDate cTimestampFromDate:date];
}

+ (NSString *)dateStrFromCstampTime:(NSInteger)timeStamp
                     withDateFormat:(NSString *)format
{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeStamp];
    return [NSDate datestrFromDate:date withDateFormat:format];
}

+ (NSString *)datestrFromDate:(NSDate *)date
               withDateFormat:(NSString *)format
{
    NSDateFormatter* dateFormat = [NSDate defaultFormatter];
    [dateFormat setDateFormat:format];
    return [dateFormat stringFromDate:date];
}

@end
