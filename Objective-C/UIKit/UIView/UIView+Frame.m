//
//  UIView+Frame.m
//  
//
//  Created by 巴糖 on 2017/1/13.
//  Copyright © 2017年 巴糖. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

#pragma mark - Left(X)
- (CGFloat)wx_left
{
    return CGRectGetMinX(self.frame);
}

- (void)setWx_left:(CGFloat)wx_left
{
    CGRect frame = self.frame;
    frame.origin.x = wx_left;
    self.frame = frame;
}
#pragma mark - Top(Y)
- (CGFloat)wx_top
{
    return CGRectGetMinY(self.frame);
}

- (void)setWx_top:(CGFloat)wx_top
{
    CGRect frame = self.frame;
    frame.origin.y = wx_top;
    self.frame = frame;
}
#pragma mark - Width
- (CGFloat)wx_width
{
    return CGRectGetWidth(self.frame);
}

- (void)setWx_width:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}
#pragma mark - Height
- (CGFloat)wx_height
{
    return CGRectGetHeight(self.frame);
}

- (void)setWx_height:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}
#pragma mark - Origin
- (CGPoint)wx_origin
{
    return self.frame.origin;
}

- (void)setWx_origin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}
#pragma mark - Size
- (CGSize)wx_size
{
    return self.frame.size;
}

- (void)setWx_size:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}
#pragma mark - Right
- (CGFloat)wx_right
{
    return CGRectGetMaxX(self.frame);
}

- (void)setWx_right:(CGFloat)wx_right
{
    CGRect frame = self.frame;
    frame.origin.x = wx_right - frame.size.width;
    self.frame = frame;
}
#pragma mark - bottom
- (CGFloat)wx_bottom
{
    return CGRectGetMaxY(self.frame);
}

- (void)setWx_bottom:(CGFloat)wx_bottom
{
    CGRect frame = self.frame;
    frame.origin.y = wx_bottom - frame.size.height;
    self.frame = frame;
}

@end
