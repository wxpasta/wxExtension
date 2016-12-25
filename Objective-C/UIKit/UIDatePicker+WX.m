#import "UIDatePicker+WX.h"

@implementation UIDatePicker (WX)

+ (instancetype)wx_datePickerWithLocaleIdentifier:(nullable NSString *)ident
                                   datePickerMode:(UIDatePickerMode)datePickerMode
                                        addTarget:(nullable id)target action:(SEL)action
{
    UIDatePicker *datePicker = [[UIDatePicker alloc] init];
    //设置最大选择时间
    datePicker.maximumDate = [NSDate date];
    //设置最小选择时间
    datePicker.minimumDate = [NSDate dateWithTimeIntervalSince1970:0];
    // 设置日期模式
    datePicker.datePickerMode = datePickerMode;
    // 设置地区
    datePicker.locale = [NSLocale localeWithLocaleIdentifier:ident];
    [datePicker addTarget:target action:action forControlEvents:UIControlEventValueChanged];
    return datePicker;
}



@end
