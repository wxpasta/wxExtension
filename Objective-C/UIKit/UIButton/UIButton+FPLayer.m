//
//  UIButton+FPLayer.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/11/13.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "UIButton+FPLayer.h"

@implementation UIButton (FPLayer)

- (UIButton *(^)(CGFloat))ffl_cornerRadius{
    __weak typeof(self) weakSelf = self;
    return ^(CGFloat radius){
        [weakSelf.layer setMasksToBounds:YES];
        [weakSelf.layer setCornerRadius:radius];
        return weakSelf;
    };
}

- (UIButton *(^)(NSString *))ffl_title{
    __weak typeof(self) weakSelf = self;
    return ^(NSString *title){
        [weakSelf setTitle:title forState:UIControlStateNormal];
        [weakSelf setTitle:title forState:UIControlStateHighlighted];
        [weakSelf setTitle:title forState:UIControlStateSelected];
        [weakSelf setTitle:title forState:UIControlStateDisabled];
        return weakSelf;
    };
}

- (UIButton *(^)(UIColor *))ffl_titleColor{
    __weak typeof(self) weakSelf = self;
    return ^(UIColor *color){
        [weakSelf setTitleColor:color forState:UIControlStateNormal];
        [weakSelf setTitleColor:color forState:UIControlStateHighlighted];
        [weakSelf setTitleColor:color forState:UIControlStateSelected];
        [weakSelf setTitleColor:color forState:UIControlStateDisabled];
        return weakSelf;
    };
}

- (UIButton *(^)(UIColor *))ffl_titleShadowColor{
    __weak typeof(self) weakSelf = self;
    return ^(UIColor *color){
        [weakSelf setTitleShadowColor:color forState:UIControlStateNormal];
        [weakSelf setTitleShadowColor:color forState:UIControlStateHighlighted];
        [weakSelf setTitleShadowColor:color forState:UIControlStateSelected];
        [weakSelf setTitleShadowColor:color forState:UIControlStateDisabled];
        return weakSelf;
    };
}

- (UIButton *(^)(NSString *))ffl_imageName{
    __weak typeof(self) weakSelf = self;
    return ^(NSString *imageNamed){
        [weakSelf setImage:[UIImage imageNamed:imageNamed] forState:UIControlStateNormal];
        [weakSelf setImage:[UIImage imageNamed:imageNamed] forState:UIControlStateHighlighted];
        [weakSelf setImage:[UIImage imageNamed:imageNamed] forState:UIControlStateSelected];
        [weakSelf setImage:[UIImage imageNamed:imageNamed] forState:UIControlStateDisabled];
        return weakSelf;
    };
}

- (UIButton *(^)(NSString *))ffl_backgroundImageName{
    __weak typeof(self) weakSelf = self;
    return ^(NSString *imageNamed){
        [weakSelf setBackgroundImage:[UIImage imageNamed:imageNamed] forState:UIControlStateNormal];
        [weakSelf setBackgroundImage:[UIImage imageNamed:imageNamed] forState:UIControlStateHighlighted];
        [weakSelf setBackgroundImage:[UIImage imageNamed:imageNamed] forState:UIControlStateSelected];
        [weakSelf setBackgroundImage:[UIImage imageNamed:imageNamed] forState:UIControlStateDisabled];
        return weakSelf;
    };
}

- (UIButton *(^)(UIImage *))ffl_image{
    __weak typeof(self) weakSelf = self;
    return ^(UIImage *image){
        [weakSelf setImage:image forState:UIControlStateNormal];
        [weakSelf setImage:image forState:UIControlStateHighlighted];
        [weakSelf setImage:image forState:UIControlStateSelected];
        [weakSelf setImage:image forState:UIControlStateDisabled];
        return weakSelf;
    };
}

- (UIButton *(^)(UIImage *))ffl_backgroundImage{
    __weak typeof(self) weakSelf = self;
    return ^(UIImage *image){
        [weakSelf setBackgroundImage:image forState:UIControlStateNormal];
        [weakSelf setBackgroundImage:image forState:UIControlStateHighlighted];
        [weakSelf setBackgroundImage:image forState:UIControlStateSelected];
        [weakSelf setBackgroundImage:image forState:UIControlStateDisabled];
        return weakSelf;
    };
}
@end
