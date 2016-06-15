//
//  UINavigationBar+WX.m
//  VRMAX
//
//  Created by AngieMita on 16/6/15.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "UINavigationBar+WX.h"

@implementation UINavigationBar (WX)

- (void)wx_setPureColorNavigationBar:(NSString *)imageName
{
    [self setBackgroundImage:[UIImage imageNamed:imageName] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    [self setShadowImage:[UIImage imageNamed:imageName]];
    
}


@end
