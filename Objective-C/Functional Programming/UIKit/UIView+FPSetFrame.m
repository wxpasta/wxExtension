//
//  UIView+FPSetFrame.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/10/16.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "UIView+FPSetFrame.h"

@implementation UIView (FPSetFrame)

- (void(^)(float))ffl_setTop
{
    __weak typeof(self) weakSelf = self;
    void (^result)(float) = ^(float value){
        CGRect frame = weakSelf.frame;
        frame.origin.y = value;
        weakSelf.frame = frame;
    };
    return result;
}

- (void(^)(float))ffl_setLeft
{
    __weak typeof(self) weakSelf = self;
    void (^result)(float) = ^(float value){
        CGRect frame = weakSelf.frame;
        frame.origin.x = value;
        weakSelf.frame = frame;
    };
    return result;
}


- (void (^)(float))ffl_setWidth
{
    __weak typeof(self) weakSelf = self;
    void (^result)(float) = ^(float value){
        CGRect frame = weakSelf.frame;
        frame.size.width = value;
        weakSelf.frame = frame;
    };
    return result;
}

- (void (^)(float))ffl_setHeight
{
    __weak typeof(self) weakSelf = self;
    void (^result)(float) = ^(float value){
        CGRect frame = weakSelf.frame;
        frame.size.height = value;
        weakSelf.frame = frame;
    };
    return result;
}

- (void (^)(CGSize))ffl_setCGSize
{
    __weak typeof(self) weakSelf = self;
    void (^result)(CGSize) = ^(CGSize value){
        CGRect frame = weakSelf.frame;
        frame.size = value;
        weakSelf.frame = frame;
    };
    return result;
}


- (void (^)(CGFloat dx,CGFloat dy))ffl_setSize
{
    __weak typeof(self) weakSelf = self;
    void (^result)(CGFloat dx,CGFloat dy) = ^(CGFloat dx,CGFloat dy){
        CGRect frame = weakSelf.frame;
        frame.size.width = dx;
        frame.size.height = dy;
        weakSelf.frame = frame;
    };
    return result;
}



- (void (^)(CGPoint))ffl_setCGPoint
{
    __weak typeof(self) weakSelf = self;
    void (^result)(CGPoint) = ^(CGPoint value){
        CGRect frame = weakSelf.frame;
        frame.origin = value;
        weakSelf.frame = frame;
    };
    return result;
}

- (void (^)(CGFloat x,CGFloat y))ffl_setOrigin
{
    __weak typeof(self) weakSelf = self;
    void (^result)(CGFloat x,CGFloat y) = ^(CGFloat x,CGFloat y){
        CGRect frame = weakSelf.frame;
        frame.origin.x = x;
        frame.origin.y = y;
        weakSelf.frame = frame;
    };
    return result;
}

- (void (^)(CGFloat x,CGFloat y, CGFloat dx,CGFloat dy))ffl_setFrame{
    __weak typeof(self) weakSelf = self;
    void (^result)(CGFloat x,CGFloat y, CGFloat dx,CGFloat dy) = ^(CGFloat x,CGFloat y, CGFloat dx,CGFloat dy){
        weakSelf.frame = CGRectMake(x, y, dx, dy);
    };
    return result;
}

@end
