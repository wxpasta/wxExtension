#import "UIViewController+WX.h"

@implementation UIViewController (WX)

-(CGFloat)wx_screenWidth
{
    return [UIScreen mainScreen].bounds.size.width;
}
-(CGFloat)wx_screenHeight
{
    return [UIScreen mainScreen].bounds.size.height;
}

- (instancetype)wx_nibLastObjectWithClass:(Class)coustomClass
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([coustomClass class]) owner:nil options:nil] lastObject];
}

- (instancetype)wx_nibLastObjectWithNibName:(NSString *)nibName
{
    return [[[NSBundle mainBundle] loadNibNamed:nibName owner:nil options:nil] lastObject];
}

+ (instancetype)wx_viewControllerWithNibName:(NSString *)nibName
{
    return [[self alloc] initWithNibName:nibName bundle:nil];
}

+ (instancetype)wx_viewControllerWithNibNameWithClass:(Class)coustomClass
{
    return [[self alloc] initWithNibName:NSStringFromClass([coustomClass class]) bundle:nil];
}

+ (instancetype)wx_viewControllerWithNibName
{
    return [[self alloc] initWithNibName:NSStringFromClass([self class]) bundle:nil];
}

- (BOOL)isVisible {
    return [self isViewLoaded] && self.view.window;
}

@end