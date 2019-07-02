@import UIKit;

@interface UITextField (WX)

@property(nonatomic, strong, nullable) UIColor * wx_placeHolderTextColor;
@property(nonatomic, strong, nullable) UIColor * wx_placeHolderTextFont;

- (void)wx_leftViewImageName:(nonnull NSString *)imageName  width:(CGFloat)width;

- (void)wx_leftViewShowText:(nonnull NSString *)text rect:(CGRect)rect;
- (void)wx_leftViewShowRightText:(nonnull NSString *)text rect:(CGRect)rect;

- (void)wx_rightViewWithImageName:(nonnull NSString *)imageName
                selectedImageName:(nonnull NSString *)selectedImageName
                            width:(CGFloat)width
                        addTarget:(nullable id)target
                           action:(nonnull SEL)action;
@end
