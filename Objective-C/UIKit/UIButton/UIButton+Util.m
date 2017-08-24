//
//  UIButton+Util.m
//  UIButtonTest
//
//  Created by AngieMIta on 2017/8/24.
//  Copyright © 2017年 crazyit.org. All rights reserved.
//

#import "UIButton+Util.h"

@implementation UIButton (Util)

- (void)setTitleForAllState:(NSString *)title{
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitle:title forState:UIControlStateHighlighted];
    [self setTitle:title forState:UIControlStateDisabled];
    [self setTitle:title forState:UIControlStateSelected];
}

- (void)setTitleColorForAllState:(UIColor *)color{
    [self setTitleColor:color forState:UIControlStateNormal];
    [self setTitleColor:color forState:UIControlStateHighlighted];
    [self setTitleColor:color forState:UIControlStateDisabled];
    [self setTitleColor:color forState:UIControlStateSelected];
}

- (void)setImageForAllState:(UIImage *)image{
    [self setImage:image forState:UIControlStateNormal];
    [self setImage:image forState:UIControlStateHighlighted];
    [self setImage:image forState:UIControlStateDisabled];
    [self setImage:image forState:UIControlStateSelected];
}


@end
