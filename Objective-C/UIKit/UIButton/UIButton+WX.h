@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (WX)

+ (nullable instancetype)wx_buttonWithImageName:(NSString *)imageName
                                  highImageName:(NSString *)highImageName
                               disableImageName:(NSString *)disableImageName
                                          frame:(CGRect)frame
                                            tag:(NSInteger)tag
                                      addTarget:(nullable id)target
                                         action:(SEL)action;

+ (nullable instancetype)wx_buttonWithTtile:(nullable NSString *)title
                                      color:(nullable UIColor *)color
                                     target:(nullable id)target
                                  addTarget:(SEL)action
                                      frame:(CGRect)frame
                 contentHorizontalAlignment:(UIControlContentHorizontalAlignment)contentHorizontalAlignment;

+ (nullable instancetype)wx_buttonWithImageName:(NSString *)imageName
                                  highImageName:(NSString *)highImageName
                                      addTarget:(nullable id)target
                                         action:(SEL)action;

+ (nullable instancetype)wx_buttonWithImageName:(NSString *)imageName
                                  highImageName:(NSString *)highImageName
                                          title:(nullable NSString *)title
                                      highTitle:(nullable NSString *)highTitle
                                     titleColor:(nullable UIColor *)titleColor
                                 highTitleColor:(nullable UIColor *)highTitleColor
                                      addTarget:(nullable id)target
                                         action:(SEL)action;
@end

NS_ASSUME_NONNULL_END
