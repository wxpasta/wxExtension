#import "UIView+WX.h"
#import "UIScreen+WX.h"

@implementation UIView (WX)

#pragma mark -  setter


#pragma mark - getter


#pragma mark -
- (BOOL)wx_isShowingOnKeyWindow
{
    // 主窗口
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    
    // 以主窗口左上角为坐标原点, 计算self的矩形框
    CGRect newFrame = [keyWindow convertRect:self.frame fromView:self.superview];
    CGRect winBounds = keyWindow.bounds;
    
    // 主窗口的bounds 和 self的矩形框 是否有重叠
    BOOL intersects = CGRectIntersectsRect(newFrame, winBounds);
    
    return !self.isHidden && self.alpha > 0.01 && self.window == keyWindow && intersects;
}

+ (instancetype)wx_viewFromXib
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

-(void)wx_setWidthKeepRight:(CGFloat)awidth
{
    self.wx_x = self.wx_right - awidth;
    self.wx_width = awidth;
}

-(void)wx_setLeftKeepRight:(CGFloat)aleft
{
    self.wx_width = self.wx_right - aleft;
    self.wx_x = aleft;
}

- (BOOL)wx_intersectWithView:(UIView *)view
{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    CGRect selfRect = [self convertRect:self.bounds toView:window];
    CGRect viewRect = [view convertRect:view.bounds toView:window];
    return CGRectIntersectsRect(selfRect, viewRect);
}

+ (instancetype)wx_viewScreenFrameWithHeight:(CGFloat)height
{
    return [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, [UIScreen mainScreen].wx_screenWidth, height)];
}

-(CGFloat)wx_widthResolution
{
    return self.wx_width * [UIScreen mainScreen].wx_screenScale;
}

-(CGFloat)wx_heighthResolution
{
    return self.wx_height * [UIScreen mainScreen].wx_screenScale;
}


@end
