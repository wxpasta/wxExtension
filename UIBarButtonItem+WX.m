//
//  UIBarButtonItem+WX.m
//  VRMAX
//
//  Created by AngieMita on 16/6/6.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "UIBarButtonItem+WX.h"

@implementation UIBarButtonItem (WX)


+ (instancetype)wx_itemWithImageName:(NSString *)imageName
                       highImageName:(NSString *)highImageName
                           addTarget:(id)target
                              action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}



@end
