//
//  UIView+Center.m
//  
//
//  Created by 巴糖 on 2017/1/13.
//  Copyright © 2017年 巴糖. All rights reserved.
//

#import "UIView+Center.h"

@implementation UIView (Center)

//***********************  centerX  ***********************//
- (CGFloat)wx_centerX
{
    return CGRectGetMinX(self.frame);
}

- (void)setWx_centerX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}
//***********************  centerY  ***********************//
- (CGFloat)wx_centerY
{
    return CGRectGetMinY(self.frame);
}

- (void)setWx_centerY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

@end
