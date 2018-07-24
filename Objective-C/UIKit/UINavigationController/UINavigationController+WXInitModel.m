//
//  UINavigationController+WXInitModel.m
//  
//
//  Created by AngieMita on 2018/07/20.
//  Copyright © 2018年 AngieMita. All rights reserved.
//

#import "UINavigationController+WXInitModel.h"
#import "WXUINavigationControllerInitInfo.h"

@implementation UINavigationController (WXInitModel)

+ (UINavigationController *)wx_navigationControllerWithModel:(WXUINavigationControllerInitInfo *)info{
    UIViewController *vc = [[[info.viewController class] alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    nav.title = info.navigationTitle;
    nav.tabBarItem.image = [UIImage imageNamed:info.imageName];
    return nav;
}

+ (UINavigationController *)wx_navigationControllerWithRootViewController:(UIViewController *)viewController
                                                                    model:(WXUINavigationControllerInitInfo *)info{
    UIViewController *vc = [[[viewController class] alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    nav.title = info.navigationTitle;
    nav.tabBarItem.image = [UIImage imageNamed:info.imageName];
    return nav;
}
@end
