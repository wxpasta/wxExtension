//
//  MBProgressHUD+AM.h
//  
//
//  Created by AngieMita on 16/6/8.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (AM)

/**
 *  显示文字信息
 *  animated 是否动画 default YES
 *  delay    延迟时间 default 3.0
 *
 *  @param text     文字内容
 *  @param view     显示视图
 */
+ (void)showText:(NSString *)text addedTo:(UIView *)view;

/**
 *  显示文字信息
 *  delay    延迟时间 default 3.0
 *
 *  @param text     文字内容
 *  @param view     显示视图
 *  @param animated 是否动画
 */

+ (void)showText:(NSString *)text addedTo:(UIView *)view animated:(BOOL)animated;
/**
 *  显示文字信息
 *  animated 是否动画 default YES
 *
 *  @param text     文字内容
 *  @param view     显示视图
 *  @param delay    延迟时间
 */
+ (void)showText:(NSString *)text addedTo:(UIView *)view afterDelay:(NSTimeInterval)delay;
/**
 *  显示文字信息(基类)
 *
 *  @param text     文字内容
 *  @param view     显示视图
 *  @param animated 是否动画
 *  @param delay    延迟时间
 */
+ (void)showText:(NSString *)text addedTo:(UIView *)view animated:(BOOL)animated afterDelay:(NSTimeInterval)delay;

@end
