//
//  UINavigationController+WX.m
//  
//
//  Created by 巴糖 on 2018/07/20.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "UINavigationController+WX.h"


@implementation UINavigationController (WX)

+ (UINavigationController *)wx_navigationControllerWithRootViewController:(UIViewController *)vc
                                                                 navTitle:(NSString *)navTitle
                                                                imageName:(NSString *)imageName
{
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    nav.title = navTitle;
    nav.tabBarItem.image = [UIImage imageNamed:imageName];
    return nav;
}


+ (UINavigationController *)wx_navigationControllerWithRootViewControllerClass:(Class)customClass
                                                                      navTitle:(NSString *)navTitle
                                                                     imageName:(NSString *)imageName
{
    UIViewController *vc = [[customClass alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    nav.title = navTitle;
    nav.tabBarItem.image = [UIImage imageNamed:imageName];
    return nav;
}




@end
