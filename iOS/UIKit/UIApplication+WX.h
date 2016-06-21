#import <UIKit/UIKit.h>

@interface UIApplication (WX)

/**
 *  设置应用程序图标的提醒数字
 *
 *  @param number
 */
+ (void)wx_applicationIconBadgeNumber:(NSInteger)number;

/**
 *  showing network spinning gear in status bar. default is NO
 *
 *  @param isNetworkActivityIndicatorVisible
 */
+ (void)wx_applicationWithNetworkActivityIndicatorVisible:(BOOL)isNetworkActivityIndicatorVisible;

/**
 *  设置状态栏
 *
 *  @param hidden
 *  @param animation UIStatusBarAnimation
 */
+ (void)wx_applicationWithStatusBarHidden:(BOOL)hidden withAnimation:(UIStatusBarAnimation)animation;

/**
 *  打开URL
 *
 *  @param urlString 
 */
+ (BOOL)wx_applicationOpenURLWithString:(NSString *)urlString;

/**
 *  打开电话
 *
 *  @param phoneString
 */
+ (void)wx_applicationTelWithString:(NSString *)phoneString;

/**
 *  发短信
 *
 *  @param smsString
 */
+ (void)wx_applicationSMSWithString:(NSString *)smsString;

/**
 *  发邮件
 *
 *  @param mailtoString
 */
+ (void)wx_applicationMailtoWithString:(NSString *)mailtoString;


@end
