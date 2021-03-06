//
//  UIStoryboard+WX.h
//  
//
//  Created by 巴糖 on 2018/7/27.
//  Copyright © 2019年 ainemo. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN


@interface UIStoryboard (WX)

/**
 用storyboard初始化UIViewController

 @param name storyboardName
 @return UIViewController
 */
+ (nullable __kindof UIViewController*)wx_storyboardInstantiateInitialViewControllerWithName:(NSString *)name;

/**
 用story_Nonnullboard初始化UIViewController

 @param name storyboardName
 @param identifier UIViewController 唯一标识
 @return UIViewController
 */
+ (__kindof UIViewController *)wx_storyboardInstantiateViewControllerWithName:(NSString *)name
                                                                   identifier:(NSString *)identifier;
@end

NS_ASSUME_NONNULL_END
