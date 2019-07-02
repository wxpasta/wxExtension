//
//  UIView+FPSetCenter.m
//  WXCategories
//
//  Created by 巴糖 on 2018/10/16.
//  Copyright © 2018 巴糖. All rights reserved.
//

#import "UIView+FPSetCenter.h"

@implementation UIView (FPSetCenter)

- (void (^)(CGPoint))ffl_setCGCenter {
    void (^result)(CGPoint) = ^(CGPoint value){
        self.center = value;
    };
    return result;
}

- (void (^)(CGFloat x,CGFloat y))ffl_setCenter {
    void (^result)(CGFloat x,CGFloat y) = ^(CGFloat x,CGFloat y){
        CGPoint center = self.center;
        center.x = x;
        center.y = y;
        self.center = center;
    };
    return result;
}

- (void (^)(CGFloat))ffl_setCenterX {
    void (^result)(CGFloat) = ^(CGFloat value){
        CGPoint center = self.center;
        center.x = value;
        self.center = center;
    };
    return result;
}

- (void (^)(CGFloat))ffl_setCenterY {
    void (^result)(CGFloat) = ^(CGFloat value){
        CGPoint center = self.center;
        center.y = value;
        self.center = center;
    };
    return result;
}

@end
