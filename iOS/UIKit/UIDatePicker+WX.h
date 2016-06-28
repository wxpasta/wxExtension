#import <UIKit/UIKit.h>

@interface UIDatePicker (WX)

+ (nullable instancetype)wx_datePickerWithLocaleIdentifier:(nullable NSString *)ident
                                            datePickerMode:(UIDatePickerMode)datePickerMode
                                                 addTarget:(nullable id)target
                                                    action:(nullable SEL)action;
@end
