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







@end
