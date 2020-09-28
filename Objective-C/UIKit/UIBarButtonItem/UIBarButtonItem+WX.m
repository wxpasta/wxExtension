//
//  UIBarButtonItem+WX.h
//  WXCategories
//
//  Created by 巴糖 on 2016/9/30.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "UIBarButtonItem+WX.h"

@implementation UIBarButtonItem (WX)


+ (instancetype)wx_itemWithImageName:(NSString *)imageName
                       highImageName:(NSString *)highImageName
                           addTarget:(id)target
                              action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *backgroundImage = [UIImage imageNamed:imageName];
    [button setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    UIImage *highImage = [UIImage imageNamed:highImageName];
    [button setBackgroundImage:highImage forState:UIControlStateHighlighted];
    
    CGRect rect = button.frame;
    rect.size = button.currentBackgroundImage.size;
    button.frame  = rect;
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}



@end
