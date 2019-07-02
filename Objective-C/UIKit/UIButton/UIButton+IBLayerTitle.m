//
//  UIButton+IBLayerTitle.m
//  XYAPPTest
//
//  Created by 巴糖 on 2019/1/18.
//  Copyright © 2019 巴糖. All rights reserved.
//

#import "UIButton+IBLayerTitle.h"

@implementation UIButton (IBLayerTitle)


- (void)setDisabledTitle:(NSString *)title{
    [self setTitle:title forState:UIControlStateDisabled];
}

- (NSString *)disabledTitle{
    return [self titleForState:UIControlStateDisabled];
}

- (void)setHighlightedTitle:(NSString *)title{
    [self setTitle:title forState:UIControlStateHighlighted];
}

- (NSString *)highlightedTitle{
    return [self titleForState:UIControlStateHighlighted];
}

- (void)setNormalTitle:(NSString *)title{
    [self setTitle:title forState:UIControlStateNormal];
}

- (NSString *)normalTitle{
    return [self titleForState:UIControlStateNormal];
}

- (void)setSelectedTitle:(NSString *)title
{
    [self setTitle:title forState:UIControlStateSelected];
}

- (NSString *)selectedTitle{
    return [self titleForState:UIControlStateSelected];
}

@end
