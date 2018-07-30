//
//  UIStoryboard+WX.h
//  
//
//  Created by 许宝吉 on 2018/7/27.
//  Copyright © 2018年 ainemo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (WX)

/**
 用storyboard初始化UIViewController

 @param name storyboardName
 @return UIViewController
 */
+ (nullable __kindof UIViewController*)wx_storyboardInstantiateInitialViewControllerWithName:(NSString *)name;

/**
 用storyboard初始化UIViewController

 @param name storyboardName
 @param identifier UIViewController 唯一标识
 @return UIViewController
 */
+ (__kindof UIViewController *)wx_storyboardInstantiateViewControllerWithName:(NSString *)name
                                                                   identifier:(NSString *)identifier;
@end
