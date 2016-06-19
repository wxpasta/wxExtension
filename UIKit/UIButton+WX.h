#import <UIKit/UIKit.h>

@interface UIButton (WX)

+ (nullable instancetype)wx_buttonWithImageName:(nullable NSString *)imageName
                                  highImageName:(nullable NSString *)highImageName
                               disableImageName:(nullable NSString *)disableImageName
                                          frame:(CGRect)frame
                                            tag:(NSInteger)tag
                                      addTarget:(nullable id)target
                                         action:(nullable SEL)action;

+ (nullable instancetype)wx_buttonWithTtile:(nullable NSString *)title
                                      color:(nullable UIColor *)color
                                     target:(nullable id)target
                                  addTarget:(nullable SEL)action
                                      frame:(CGRect)frame
                 contentHorizontalAlignment:(UIControlContentHorizontalAlignment)contentHorizontalAlignment;
@end
