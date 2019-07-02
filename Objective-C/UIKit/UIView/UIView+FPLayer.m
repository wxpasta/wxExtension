//
//  UIView+FPLayer.m
//  WXCategories
//
//  Created by 许宝吉 on 2018/11/8.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "UIView+FPLayer.h"

@implementation UIView (FPLayer)

- (UIView *(^)(CGFloat))ffl_cornerRadius{
    return ^(CGFloat radius){
        [self.layer setMasksToBounds:YES];
        [self.layer setCornerRadius:radius];
        return self;
    };
}

@end
