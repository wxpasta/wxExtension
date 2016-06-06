//
//  MBProgressHUD+Extension.h
//  VRMAX
//
//  Created by AngieMita on 16/6/3.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (Extension)

/**
 *  显示错误文字版
 *
 *  @param error
 *  @param view
 */
+ (void)showError:(NSString *)error
          addedTo:(UIView *)view;
/**
 *  显示错误文字版
 *
 *  @param error
 *  @param view
 *  @param animated
 */
+ (void)showError:(NSString *)error
          addedTo:(UIView *)view
         animated:(BOOL)animated;
/**
 *  显示错误文字版
 *
 *  @param error
 *  @param view
 *  @param delay 延迟消失时间
 */
+ (void)showError:(NSString *)error
          addedTo:(UIView *)view
       afterDelay:(NSTimeInterval)delay;
/**
 *  显示错误文字版
 *
 *  @param error
 *  @param view
 *  @param animated
 *  @param delay 延迟消失时间
 */
+ (void)showError:(NSString *)error
          addedTo:(UIView *)view
         animated:(BOOL)animated
       afterDelay:(NSTimeInterval)delay;

@end
