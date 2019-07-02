//
//  UIButton+CustomButton.m
//  WXCategories
//
//  Created by 巴糖 on 2019/6/24.
//  Copyright © 2019 巴糖. All rights reserved.
//

#import "UIButton+CustomButton.h"

@implementation UIButton (CustomButton)

- (UIButton * (^)(CGFloat))xyCornerRadius {
    return ^(CGFloat radius){
        [self.layer setMasksToBounds:YES];
        [self.layer setCornerRadius:radius];
        return self;
    };
}

@end
