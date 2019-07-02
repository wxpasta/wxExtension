//
//  UINavigationController+WX.h
//
//
//  Created by 巴糖 on 2018/07/20.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import UIKit;


@interface UINavigationController (WX)

+ (UINavigationController *)wx_navigationControllerWithRootViewController:(UIViewController *)vc
                                                                 navTitle:(NSString *)navTitle
                                                                imageName:(NSString *)imageName;

+ (UINavigationController *)wx_navigationControllerWithRootViewControllerClass:(Class)customClass
                                                                      navTitle:(NSString *)navTitle
                                                                     imageName:(NSString *)imageName;




@end
