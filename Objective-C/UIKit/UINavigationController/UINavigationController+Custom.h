//
//  UINavigationController+Custom.h
//  WXCategories
//
//  Created by 巴糖 on 2019/7/1.
//  Copyright © 2019 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (Custom)

/**
 隐藏导航栏下边的灰色线条，直接在自定义的 UINavigationController 类里调用下边的方法

 @param view view description
 @return return value description
 */
- (UIImageView *)findHairlineImageViewUnder:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
