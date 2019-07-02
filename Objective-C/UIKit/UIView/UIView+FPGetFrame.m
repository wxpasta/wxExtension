//
//  UIView+FPGetFrame.m
//  WXCategories
//
//  Created by 许宝吉 on 2018/10/20.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "UIView+FPGetFrame.h"

@implementation UIView (FPGetFrame)


- (CGFloat (^)(void))ffl_left {
    return ^(){
        return CGRectGetMinX(self.frame);
    };
}

- (CGFloat (^)(void))ffl_top {
    return ^(){
        return CGRectGetMinY(self.frame);
    };
}

- (CGFloat (^)(void))ffl_width {
    return ^(){
        return CGRectGetWidth(self.frame);
    };
}

- (CGFloat (^)(void))ffl_height {
    return ^(){
        return CGRectGetHeight(self.frame);
    };
}

- (CGPoint (^)(void))ffl_origin {
    return ^(){
        return self.frame.origin;
    };
}

- (CGSize (^)(void))ffl_size {
    return ^(){
        return self.frame.size;
    };
}

- (CGFloat (^)(void))ffl_right {
    return ^(){
        return CGRectGetMaxX(self.frame);
    };
}

- (CGFloat (^)(void))ffl_bottom {
    return ^(){
        return CGRectGetMaxY(self.frame);
    };
}

@end
