#import <UIKit/UIKit.h>

@interface UIView (WX)

#pragma mark - image resolution(分辨率)
@property (nonatomic, assign, readonly) CGFloat wx_widthResolution;
@property (nonatomic, assign, readonly) CGFloat wx_heighthResolution;

- (BOOL)wx_isShowingOnKeyWindow;

+ (instancetype)wx_viewFromXib;

- (void)wx_setWidthKeepRight:(CGFloat)awidth;
- (void)wx_setLeftKeepRight:(CGFloat)aleft;
- (BOOL)wx_intersectWithView:(UIView *)view;

+ (instancetype)wx_viewScreenFrameWithHeight:(CGFloat)height;

@end
