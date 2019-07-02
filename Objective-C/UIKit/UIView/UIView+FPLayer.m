//
//  UIView+FPLayer.m
//  WXCategories
//
//  Created by 巴糖 on 2018/11/8.
//  Copyright © 2018 巴糖. All rights reserved.
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
