//
//  UIButton+Title.m
//  UIButtonTest
//
//  Created by AngieMIta on 2017/8/23.
//  Copyright © 2017年 crazyit.org. All rights reserved.
//

#import "UIButton+Title.h"

@implementation UIButton (Title)


-(NSString *)titleForNormal{
    return [self titleForState:UIControlStateNormal];
}

-(NSString *)titleForHighlighted{
    return [self titleForState:UIControlStateHighlighted];
}

-(NSString *)titleForDisabled{
    return [self titleForState:UIControlStateDisabled];
}

-(NSString *)titleForSelected{
    return [self titleForState:UIControlStateSelected];
}


- (void)setTitleForNormal:(nullable NSString *)title{
    [self setTitle:title forState:UIControlStateNormal];
}

- (void)setTitleForHighlighted:(nullable NSString *)title{
    [self setTitle:title forState:UIControlStateHighlighted];
}

- (void)setTitleForDisabled:(nullable NSString *)title{
    [self setTitle:title forState:UIControlStateDisabled];
}

- (void)setTitleForSelected:(nullable NSString *)title{
    [self setTitle:title forState:UIControlStateSelected];
}

@end
