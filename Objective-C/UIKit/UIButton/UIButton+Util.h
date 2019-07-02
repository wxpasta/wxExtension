//
//  UIButton+Util.h
//  UIButtonTest
//
//  Created by AngieMIta on 2017/8/24.
//  Copyright © 2017年 crazyit.org. All rights reserved.
//

@import UIKit;

@interface UIButton (Util)

/**
 Set title for all states.
 为所有状态设置标题。

 @param title title description
 */
- (void)setTitleForAllState:(NSString *)title;

/**
 * Set title color for all states.
 * 为所有状态设置标题颜色。
 *
 * @param color  UIColor
 */
- (void)setTitleColorForAllState:(UIColor *)color;

/**
 * Set image for all states.
 * 为所有状态设置图像。
 *
 @param image UIImage
 */
- (void)setImageForAllState:(UIImage *)image;

@end
