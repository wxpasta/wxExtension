//
//  UINavigationController+VMPNaigationBarStyle.m
//  vmp
//
//  Created by magic-devel on 2020/9/30.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import "UINavigationController+VMPNaigationBarStyle.h"

@implementation UINavigationController (VMPNaigationBarStyle)

- (void)removeNavigationBarBottomLine {
    [self.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    self.navigationBar.shadowImage = [[UIImage alloc] init];
}

- (void)setNavigationBarBottonLineWithColor:(UIColor *)color {
    //设置底部line颜色时需要同时设置backgroundImage即导航栏的背景图片 否则没有效果
    [self.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:[self setImageWithColor:color]];
}

#pragma mark - Private
- (UIImage *)setImageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0, 0.0, 1.0, 1.0);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

/// 背景色
- (void)setNavigationBarBackgroundWithColor:(UIColor *)color {
    self.navigationBar.barTintColor = color;
}

@end
