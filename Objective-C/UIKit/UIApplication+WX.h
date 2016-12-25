#import <UIKit/UIKit.h>

@interface UIApplication (WX)

/**
 *  设置应用程序图标的提醒数字
 */
+ (void)wx_applicationIconBadgeNumber:(NSInteger)number;

/**
 * showing network spinning gear in status bar. default is NO
 */
+ (void)wx_applicationWithNetworkActivityIndicatorVisible:(BOOL)isNetworkActivityIndicatorVisible;

/**
 *  设置状态栏
 */
+ (void)wx_applicationWithStatusBarHidden:(BOOL)hidden withAnimation:(UIStatusBarAnimation)animation;

/**
 *  打开URL
 */
+ (BOOL)wx_applicationOpenURLWithString:(NSString *)urlString;

/**
 *  打开电话
 */
+ (void)wx_applicationTelWithString:(NSString *)phoneString;

/**
 *  发短信
 */
+ (void)wx_applicationSMSWithString:(NSString *)smsString;

/**
 *  发邮件
 */
+ (void)wx_applicationMailtoWithString:(NSString *)mailtoString;


@end
