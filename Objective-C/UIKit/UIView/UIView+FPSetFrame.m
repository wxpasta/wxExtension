//
//  UIView+FPSetFrame.m
//  WXCategories
//
//  Created by 许宝吉 on 2018/10/16.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "UIView+FPSetFrame.h"

@implementation UIView (FPSetFrame)

- (void(^)(CGFloat))ffl_setTop {
    void (^result)(CGFloat) = ^(CGFloat value){
        CGRect frame = self.frame;
        frame.origin.y = value;
        self.frame = frame;
    };
    return result;
}

- (void(^)(CGFloat))ffl_setLeft {
    void (^result)(CGFloat) = ^(CGFloat value){
        CGRect frame = self.frame;
        frame.origin.x = value;
        self.frame = frame;
    };
    return result;
}


- (void (^)(CGFloat))ffl_setWidth {
    void (^result)(CGFloat) = ^(CGFloat value){
        CGRect frame = self.frame;
        frame.size.width = value;
        self.frame = frame;
    };
    return result;
}

- (void (^)(CGFloat))ffl_setHeight {
    void (^result)(CGFloat) = ^(CGFloat value){
        CGRect frame = self.frame;
        frame.size.height = value;
        self.frame = frame;
    };
    return result;
}

- (void (^)(CGSize))ffl_setCGSize {
    void (^result)(CGSize) = ^(CGSize value){
        CGRect frame = self.frame;
        frame.size = value;
        self.frame = frame;
    };
    return result;
}


- (void (^)(CGFloat dx,CGFloat dy))ffl_setSize {
    void (^result)(CGFloat dx,CGFloat dy) = ^(CGFloat dx,CGFloat dy){
        CGRect frame = self.frame;
        frame.size.width = dx;
        frame.size.height = dy;
        self.frame = frame;
    };
    return result;
}



- (void (^)(CGPoint))ffl_setCGPoint {
    void (^result)(CGPoint) = ^(CGPoint value){
        CGRect frame = self.frame;
        frame.origin = value;
        self.frame = frame;
    };
    return result;
}

- (void (^)(CGFloat x,CGFloat y))ffl_setOrigin {
    void (^result)(CGFloat x,CGFloat y) = ^(CGFloat x,CGFloat y){
        CGRect frame = self.frame;
        frame.origin.x = x;
        frame.origin.y = y;
        self.frame = frame;
    };
    return result;
}

- (void (^)(CGFloat x,CGFloat y, CGFloat dx,CGFloat dy))ffl_setFrame {
    void (^result)(CGFloat x,CGFloat y, CGFloat dx,CGFloat dy) = ^(CGFloat x,CGFloat y, CGFloat dx,CGFloat dy){
        self.frame = CGRectMake(x, y, dx, dy);
    };
    return result;
}

@end
