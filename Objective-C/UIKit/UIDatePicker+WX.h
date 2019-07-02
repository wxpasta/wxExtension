@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIDatePicker (WX)

+ (nullable instancetype)wx_datePickerWithLocaleIdentifier:(NSString *)ident
                                            datePickerMode:(UIDatePickerMode)datePickerMode
                                                 addTarget:(nullable id)target
                                                    action:(SEL)action;
@end

NS_ASSUME_NONNULL_END
