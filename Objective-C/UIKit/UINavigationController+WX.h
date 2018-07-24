//
//  UINavigationController+WX.h
//
//
//  Created by AngieMita on 2018/07/20.
//  Copyright © 2018年 AngieMita. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UINavigationController (WX)

+ (UINavigationController *)wx_navigationControllerWithRootViewController:(UIViewController *)vc
                                                                 navTitle:(NSString *)navTitle
                                                                imageName:(NSString *)imageName;

+ (UINavigationController *)wx_navigationControllerWithRootViewControllerClass:(Class)customClass
                                                                      navTitle:(NSString *)navTitle
                                                                     imageName:(NSString *)imageName;




@end
