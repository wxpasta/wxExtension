//
//  UIButton+TitleColorColor.m
//  UIButtonTest
//
//  Created by AngieMIta on 2017/8/23.
//  Copyright © 2017年 crazyit.org. All rights reserved.
//

#import "UIButton+TitleColor.h"

@implementation UIButton (TitleColor)

-(UIColor *)TitleColorForNormal{
    return [self titleColorForState:UIControlStateNormal];
}

-(UIColor *)TitleColorForHighlighted{
    return [self titleColorForState:UIControlStateHighlighted];
}

-(UIColor *)TitleColorForDisabled{
    return [self titleColorForState:UIControlStateDisabled];
}

-(UIColor *)TitleColorForSelected{
    return [self titleColorForState:UIControlStateSelected];
}


- (void)setTitleColorForNormal:(nullable UIColor *)color{
    [self setTitleColor:color forState:UIControlStateNormal];
}

- (void)setTitleColorForHighlighted:(nullable UIColor *)color{
    [self setTitleColor:color forState:UIControlStateHighlighted];
}

- (void)setTitleColorForDisabled:(nullable UIColor *)color{
    [self setTitleColor:color forState:UIControlStateDisabled];
}

- (void)setTitleColorForSelected:(nullable UIColor *)color{
    [self setTitleColor:color forState:UIControlStateSelected];
}

@end
