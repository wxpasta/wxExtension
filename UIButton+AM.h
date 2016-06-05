#import <UIKit/UIKit.h>

@interface UIButton (AM)

+ (nullable instancetype)wx_buttonWithImageName:(nullable NSString *)imageName
                                  highImageName:(nullable NSString *)highImageName
                               disableImageName:(nullable NSString *)disableImageName
                                      frame:(CGRect)frame
                                        tag:(NSInteger)tag
                                  addTarget:(nullable id)target
                                     action:(nullable SEL)action;
@end
