#import "UIView+WX.h"

@implementation UIView (WX)

#pragma mark -  setter
- (void)setWx_x:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setWx_y:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (void)setWx_width:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setWx_height:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (void)setWx_centerX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (void)setWx_centerY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (void)setWx_origin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (void)setWx_size:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (void)setWx_right:(CGFloat)wx_right
{
    self.wx_x = wx_right - self.wx_width;
}

- (void)setWx_bottom:(CGFloat)wx_bottom
{
    self.wx_y = wx_bottom - self.wx_height;
}


#pragma mark - getter
- (CGFloat)wx_x
{
    return CGRectGetMinX(self.frame);
}

- (CGFloat)wx_y
{
    return CGRectGetMinY(self.frame);
}

- (CGFloat)wx_width
{
    return CGRectGetWidth(self.frame);
}

- (CGFloat)wx_height
{
    return CGRectGetHeight(self.frame);
}

- (CGFloat)wx_centerX
{
    return CGRectGetMinX(self.frame);
}

- (CGFloat)wx_centerY
{
    return CGRectGetMinY(self.frame);
}

- (CGSize)wx_size
{
    return self.frame.size;
}

- (CGPoint)wx_origin
{
    return self.frame.origin;
}

- (CGFloat)wx_right
{
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)wx_bottom
{
    return CGRectGetMaxY(self.frame);
}

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
@end
