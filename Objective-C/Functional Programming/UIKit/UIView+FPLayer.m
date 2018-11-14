//
//  UIView+FPLayer.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/11/8.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "UIView+FPLayer.h"

@implementation UIView (FPLayer)

- (UIView *(^)(CGFloat))ffl_cornerRadius{
    __weak typeof(self) weakSelf = self;
    return ^(CGFloat radius){
        [weakSelf.layer setMasksToBounds:YES];
        [weakSelf.layer setCornerRadius:radius];
        return weakSelf;
    };
}

@end
