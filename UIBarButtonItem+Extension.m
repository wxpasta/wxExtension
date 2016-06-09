//
//  UIBarButtonItem+Extension.m
//  VRMAX
//
//  Created by AngieMita on 16/6/3.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

+ (instancetype)itemWithImage:(NSString *)image
                    highImage:(NSString *)highImage
                       target:(id)target
                       action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}

@end
