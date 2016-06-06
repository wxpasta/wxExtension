//
//  UIBarButtonItem+WX.m
//  VRMAX
//
//  Created by AngieMita on 16/6/6.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "UIBarButtonItem+WX.h"

@implementation UIBarButtonItem (WX)


- (instancetype)wx_itemWithTtile:(NSString *)title
                           color:(UIColor *)color
                          target:(id)target
                          addTarget:(SEL)action
                           frame:(CGRect)frame
      contentHorizontalAlignment:(UIControlContentHorizontalAlignment)contentHorizontalAlignment
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    [btn setTitle:title forState:UIControlStateNormal];
   
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    
    [btn setTitleColor:color forState:UIControlStateNormal];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];

    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}

@end
