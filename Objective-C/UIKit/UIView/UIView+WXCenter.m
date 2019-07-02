//
//  UIView+WXCenter.m
//  WXCategories
//
//  Created by 巴糖 on 2018/11/16.
//  Copyright © 2018 巴糖. All rights reserved.
//

#import "UIView+WXCenter.h"

@implementation UIView (WXCenter)

#pragma mark - centerX
//***********************  centerX  ***********************//
- (CGFloat)wx_centerX{
    return self.center.x;
}

- (void)setWx_centerX:(CGFloat)centerX{
    self.center = CGPointMake(centerX, self.center.y);
}

//***********************  centerY  ***********************//
#pragma mark - centerY
- (CGFloat)wx_centerY{
    return self.center.y;
}

- (void)setWx_centerY:(CGFloat)centerY{
    self.center = CGPointMake(self.center.x, centerY);
}


@end
