//
//  CAShapeLayer+WX.h
//  WXCategories
//
//  Created by 巴糖 on 2018/5/20.
//  Copyright © 2019 巴糖. All rights reserved.
//

#import "CAShapeLayer+WX.h"

@import UIKit;

@implementation CAShapeLayer (WX)


+ (instancetype)wx_circular:(CGRect)bounds
{
    CAShapeLayer *layer = [CAShapeLayer layer];
    UIBezierPath *aPath = [UIBezierPath bezierPathWithOvalInRect:bounds];
    layer.path = aPath.CGPath;
    
    return layer;
}

@end
