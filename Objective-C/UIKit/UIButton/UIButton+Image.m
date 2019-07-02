//
//  UIButton+Image.m
//  UIButtonTest
//
//  Created by 巴糖 on 2017/8/23.
//  Copyright © 2019年 crazyit.org. All rights reserved.
//

#import "UIButton+Image.h"

@implementation UIButton (Image)

- (UIImage *)imageForNormal{
    return [self imageForState:UIControlStateNormal];
}

- (UIImage *)imageForHighlighted{
    return [self imageForState:UIControlStateHighlighted];
}

- (UIImage *)imageForDisabled{
    return [self imageForState:UIControlStateDisabled];
}

- (UIImage *)imageForSelected{
    return [self imageForState:UIControlStateSelected];
}


- (void)setImageForNormal:(nullable UIImage *)image{
    [self setImage:image forState:UIControlStateNormal];
}

- (void)setImageForHighlighted:(nullable UIImage *)image{
    [self setImage:image forState:UIControlStateHighlighted];
}

- (void)setImageForDisabled:(nullable UIImage *)image{
    [self setImage:image forState:UIControlStateDisabled];
}

- (void)setImageForSelected:(nullable UIImage *)image{
    [self setImage:image forState:UIControlStateSelected];
}

@end
