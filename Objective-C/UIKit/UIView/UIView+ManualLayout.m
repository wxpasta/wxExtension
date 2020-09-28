//
//  UIView+ManualLayout.m
//  TestAPP
//
//  Created by magic-devel on 2020/9/11.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import "UIView+ManualLayout.h"

@implementation UIView (ManualLayout)


#pragma mark - Width
//***********************  Width  ***********************//
- (CGFloat)ml_width {
    return CGRectGetWidth(self.frame);
}

- (void)setMl_width:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

#pragma mark - Height
//***********************  Height  ***********************//
- (CGFloat)ml_height {
    return CGRectGetHeight(self.frame);
}

- (void)setMl_height:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

#pragma mark - Size
//***********************  Size  ***********************//
- (CGSize)ml_size{
    return self.frame.size;
}

- (void)setMl_size:(CGSize)size{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}
@end
