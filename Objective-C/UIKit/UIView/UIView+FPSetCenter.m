//
//  UIView+FPSetCenter.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/10/16.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "UIView+FPSetCenter.h"

@implementation UIView (FPSetCenter)

- (void (^)(CGPoint))ffl_setCGCenter
{
    __weak typeof(self) weakSelf = self;
    void (^result)(CGPoint) = ^(CGPoint value){
        weakSelf.center = value;
    };
    return result;
}

- (void (^)(CGFloat x,CGFloat y))ffl_setCenter
{
    __weak typeof(self) weakSelf = self;
    void (^result)(CGFloat x,CGFloat y) = ^(CGFloat x,CGFloat y){
        CGPoint center = weakSelf.center;
        center.x = x;
        center.y = y;
        weakSelf.center = center;
    };
    return result;
}

- (void (^)(CGFloat))ffl_setCenterX
{
    __weak typeof(self) weakSelf = self;
    void (^result)(CGFloat) = ^(CGFloat value){
        CGPoint center = weakSelf.center;
        center.x = value;
        weakSelf.center = center;
    };
    return result;
}

- (void (^)(CGFloat))ffl_setCenterY
{
    __weak typeof(self) weakSelf = self;
    void (^result)(CGFloat) = ^(CGFloat value){
        CGPoint center = weakSelf.center;
        center.y = value;
        weakSelf.center = center;
    };
    return result;
}
@end
