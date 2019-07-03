@import UIKit;

@interface UIView (WX)

#pragma mark - image resolution(分辨率)
@property (nonatomic, readonly, assign) CGFloat wx_widthResolution;
@property (nonatomic, readonly, assign) CGFloat wx_heighthResolution;

- (BOOL)wx_isShowingOnKeyWindow;

+ (instancetype)wx_viewFromXib;

- (void)wx_setWidthKeepRight:(CGFloat)awidth;
- (void)wx_setLeftKeepRight:(CGFloat)aleft;
- (BOOL)wx_intersectWithView:(UIView *)view;

+ (instancetype)wx_viewScreenFrameWithHeight:(CGFloat)height;

@end
