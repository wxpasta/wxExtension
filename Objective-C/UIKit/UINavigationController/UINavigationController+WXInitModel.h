//
//  UINavigationController+WXInitModel.h
//
//
//  Created by AngieMita on 2018/07/20.
//  Copyright © 2018年 AngieMita. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  WXUINavigationControllerInitInfo;

@interface UINavigationController (WXInitModel)

+ (UINavigationController *)wx_navigationControllerWithModel:(WXUINavigationControllerInitInfo *)info;


+ (UINavigationController *)wx_navigationControllerWithRootViewController:(UIViewController *)viewController
                                                                    model:(WXUINavigationControllerInitInfo *)info;
@end
