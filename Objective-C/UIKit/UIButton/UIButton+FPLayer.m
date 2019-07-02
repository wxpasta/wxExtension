//
//  UIButton+FPLayer.m
//  WXCategories
//
//  Created by 巴糖 on 2018/11/13.
//  Copyright © 2018 巴糖. All rights reserved.
//

#import "UIButton+FPLayer.h"

@implementation UIButton (FPLayer)

- (UIButton *(^)(CGFloat))ffl_cornerRadius {
    return ^(CGFloat radius){
        [self.layer setMasksToBounds:YES];
        [self.layer setCornerRadius:radius];
        return self;
    };
}

- (UIButton *(^)(NSString *))ffl_title {
    return ^(NSString *title){
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitle:title forState:UIControlStateHighlighted];
        [self setTitle:title forState:UIControlStateSelected];
        [self setTitle:title forState:UIControlStateDisabled];
        return self;
    };
}

- (UIButton *(^)(UIColor *))ffl_titleColor {
    return ^(UIColor *color){
        [self setTitleColor:color forState:UIControlStateNormal];
        [self setTitleColor:color forState:UIControlStateHighlighted];
        [self setTitleColor:color forState:UIControlStateSelected];
        [self setTitleColor:color forState:UIControlStateDisabled];
        return self;
    };
}

- (UIButton *(^)(UIColor *))ffl_titleShadowColor {
    return ^(UIColor *color){
        [self setTitleShadowColor:color forState:UIControlStateNormal];
        [self setTitleShadowColor:color forState:UIControlStateHighlighted];
        [self setTitleShadowColor:color forState:UIControlStateSelected];
        [self setTitleShadowColor:color forState:UIControlStateDisabled];
        return self;
    };
}

- (UIButton *(^)(NSString *))ffl_imageName {
    return ^(NSString *imageNamed){
        [self setImage:[UIImage imageNamed:imageNamed] forState:UIControlStateNormal];
        [self setImage:[UIImage imageNamed:imageNamed] forState:UIControlStateHighlighted];
        [self setImage:[UIImage imageNamed:imageNamed] forState:UIControlStateSelected];
        [self setImage:[UIImage imageNamed:imageNamed] forState:UIControlStateDisabled];
        return self;
    };
}

- (UIButton *(^)(NSString *))ffl_backgroundImageName {
    return ^(NSString *imageNamed){
        [self setBackgroundImage:[UIImage imageNamed:imageNamed] forState:UIControlStateNormal];
        [self setBackgroundImage:[UIImage imageNamed:imageNamed] forState:UIControlStateHighlighted];
        [self setBackgroundImage:[UIImage imageNamed:imageNamed] forState:UIControlStateSelected];
        [self setBackgroundImage:[UIImage imageNamed:imageNamed] forState:UIControlStateDisabled];
        return self;
    };
}

- (UIButton *(^)(UIImage *))ffl_image {
    return ^(UIImage *image){
        [self setImage:image forState:UIControlStateNormal];
        [self setImage:image forState:UIControlStateHighlighted];
        [self setImage:image forState:UIControlStateSelected];
        [self setImage:image forState:UIControlStateDisabled];
        return self;
    };
}

- (UIButton *(^)(UIImage *))ffl_backgroundImage {
    return ^(UIImage *image){
        [self setBackgroundImage:image forState:UIControlStateNormal];
        [self setBackgroundImage:image forState:UIControlStateHighlighted];
        [self setBackgroundImage:image forState:UIControlStateSelected];
        [self setBackgroundImage:image forState:UIControlStateDisabled];
        return self;
    };
}

@end
