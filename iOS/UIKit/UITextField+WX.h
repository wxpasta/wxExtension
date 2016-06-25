#import <UIKit/UIKit.h>

@interface UITextField (WX)

@property(nonatomic) UIColor * wx_placeHolderTextColor;
@property(nonatomic) UIColor * wx_placeHolderTextFont;

- (void)wx_leftViewImageName:(nonnull NSString *)imageName  width:(CGFloat)width;

- (void)wx_leftViewShowText:(nonnull NSString *)text rect:(CGRect)rect;
- (void)wx_leftViewShowRightText:(nonnull NSString *)text rect:(CGRect)rect;
@end
