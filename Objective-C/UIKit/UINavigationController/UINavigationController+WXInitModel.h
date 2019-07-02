//
//  UINavigationController+WXInitModel.h
//
//
//  Created by 巴糖 on 2018/07/20.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import UIKit;
@class  WXUINavigationControllerInitInfo;

@interface UINavigationController (WXInitModel)

+ (UINavigationController *)wx_navigationControllerWithModel:(WXUINavigationControllerInitInfo *)info;


+ (UINavigationController *)wx_navigationControllerWithRootViewController:(UIViewController *)viewController
                                                                    model:(WXUINavigationControllerInitInfo *)info;
@end
