#import "CAShapeLayer+WX.h"
#import <UIKit/UIKit.h>

@implementation CAShapeLayer (WX)


+ (instancetype)wx_circular:(CGRect)bounds
{
    CAShapeLayer *layer = [CAShapeLayer layer];
    UIBezierPath *aPath = [UIBezierPath bezierPathWithOvalInRect:bounds];
    layer.path = aPath.CGPath;
    
    return layer;
}

@end
