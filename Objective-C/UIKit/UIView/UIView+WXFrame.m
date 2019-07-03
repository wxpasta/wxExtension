//
//  UIView+WXFrame.m
//  WXCategories
//
//  Created by 巴糖 on 2018/11/16.
//  Copyright © 2019 巴糖. All rights reserved.
//

#import "UIView+WXFrame.h"

@implementation UIView (WXFrame)

#pragma mark - Top(Y)
//***********************  Top(Y)  ***********************//
- (CGFloat)wx_top{
    return CGRectGetMinY(self.frame);
}

- (void)setWx_top:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

#pragma mark - bottom
//***********************  bottom  ***********************//
- (CGFloat)wx_bottom{
    return CGRectGetMaxY(self.frame);
}

- (void)setWx_bottom:(CGFloat)bottom{
    CGRect frame = self.frame;
    frame.origin.y = bottom - self.frame.size.width;
    self.frame = frame;
}

#pragma mark - Left(X)
//***********************  Left(X)  ***********************//
- (CGFloat)wx_left{
    return CGRectGetMinX(self.frame);
}

- (void)setWx_left:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

#pragma mark - Right
//***********************  Right  ***********************//
- (CGFloat)wx_right{
    return CGRectGetMaxX(self.frame);
}

- (void)setWx_right:(CGFloat)right{
    CGRect frame = self.frame;
    frame.origin.x = right - self.frame.size.width;
    self.frame = frame;
}

#pragma mark - Width
//***********************  Width  ***********************//
- (CGFloat)wx_width{
    return CGRectGetWidth(self.frame);
}

- (void)setWx_width:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

#pragma mark - Height
//***********************  Height  ***********************//
- (CGFloat)wx_height{
    return CGRectGetHeight(self.frame);
}

- (void)setWx_height:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

#pragma mark - Origin
//***********************  Origin  ***********************//
- (CGPoint)wx_origin{
    return self.frame.origin;
}

- (void)setWx_origin:(CGPoint)origin{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

#pragma mark - Size
//***********************  Size  ***********************//
- (CGSize)wx_size{
    return self.frame.size;
}

- (void)setWx_size:(CGSize)size{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}
@end
