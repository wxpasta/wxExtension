//
//  UIView+FPGetFrame.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/10/20.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "UIView+FPGetFrame.h"

@implementation UIView (FPGetFrame)


- (CGFloat (^)(void))ffl_left
{
    __weak typeof(self) weakSelf = self;
    return ^(){
        return CGRectGetMinX(weakSelf.frame);
    };
}

- (CGFloat (^)(void))ffl_top
{
    __weak typeof(self) weakSelf = self;
    return ^(){
        return CGRectGetMinY(weakSelf.frame);
    };
}

- (CGFloat (^)(void))ffl_width
{
    __weak typeof(self) weakSelf = self;
    return ^(){
        return CGRectGetWidth(weakSelf.frame);
    };
}

- (CGFloat (^)(void))ffl_height
{
    __weak typeof(self) weakSelf = self;
    return ^(){
        return CGRectGetHeight(weakSelf.frame);
    };
}

- (CGPoint (^)(void))ffl_origin
{
    __weak typeof(self) weakSelf = self;
    return ^(){
        return weakSelf.frame.origin;
    };
}

- (CGSize (^)(void))ffl_size
{
    __weak typeof(self) weakSelf = self;
    return ^(){
        return weakSelf.frame.size;
    };
}

- (CGFloat (^)(void))ffl_right
{
    __weak typeof(self) weakSelf = self;
    return ^(){
        return CGRectGetMaxX(weakSelf.frame);
    };
}

- (CGFloat (^)(void))ffl_bottom
{
    __weak typeof(self) weakSelf = self;
    return ^(){
        return CGRectGetMaxY(weakSelf.frame);
    };
}
@end
