#import "UIScreen+WX.h"

@implementation UIScreen (WX)

- (CGFloat)wx_screenWidth
{
    return [UIScreen mainScreen].bounds.size.width;
}

- (CGFloat)wx_screenHeight
{
    return [UIScreen mainScreen].bounds.size.height;
}

- (CGSize)wx_screenSize
{
    return [UIScreen mainScreen].bounds.size;
}

- (CGPoint)wx_screenOrigin
{
    return [UIScreen mainScreen].bounds.origin;
}

-(CGFloat)wx_screenScale
{
    return [UIScreen mainScreen].scale;
}

@end
