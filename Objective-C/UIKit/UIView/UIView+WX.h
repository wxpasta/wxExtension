#import <UIKit/UIKit.h>

@interface UIView (WX)

@property (nonatomic, assign) CGFloat wx_x;
@property (nonatomic, assign) CGFloat wx_right;
@property (nonatomic, assign) CGFloat wx_y;
@property (nonatomic, assign) CGFloat wx_bottom;
@property (nonatomic, assign) CGFloat wx_width;
@property (nonatomic, assign) CGFloat wx_height;
@property (nonatomic, assign) CGFloat wx_centerX;
@property (nonatomic, assign) CGFloat wx_centerY;

@property (nonatomic, assign) CGSize wx_size;
@property (nonatomic, assign) CGPoint wx_origin;

@property (nonatomic, assign, readonly) CGFloat wx_widthResolution;
@property (nonatomic, assign, readonly) CGFloat wx_heighthResolution;

- (BOOL)wx_isShowingOnKeyWindow;

+ (instancetype)wx_viewFromXib;

- (void)wx_setWidthKeepRight:(CGFloat)awidth;
- (void)wx_setLeftKeepRight:(CGFloat)aleft;
- (BOOL)wx_intersectWithView:(UIView *)view;

+ (instancetype)wx_viewScreenFrameWithHeight:(CGFloat)height;

@end
