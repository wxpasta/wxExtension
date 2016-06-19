#import "UIApplication+WX.h"

@implementation UIApplication (WX)

+ (void)wx_applicationIconBadgeNumber:(NSInteger)number
{
    // 0. 获取应用程序的象征
    UIApplication *app = [UIApplication sharedApplication];
    
    // 1.设置应用程序图标的提醒数字
    app.applicationIconBadgeNumber = number;
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) {
        // 创建通知对象
        UIUserNotificationSettings *setting = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeBadge categories:nil];
        // 注册用户通知
        [app registerUserNotificationSettings:setting];
    }
}

+ (void)wx_applicationWithNetworkActivityIndicatorVisible:(BOOL)isNetworkActivityIndicatorVisible
{
    UIApplication *app = [UIApplication sharedApplication];
    //设置联网的提示
    app.networkActivityIndicatorVisible = isNetworkActivityIndicatorVisible;
}

+ (void)wx_applicationWithStatusBarHidden:(BOOL)hidden withAnimation:(UIStatusBarAnimation)animation
{
    UIApplication *app = [UIApplication sharedApplication];
    //设置状态栏
    [app setStatusBarHidden:YES withAnimation:animation];
}

+ (BOOL)wx_applicationOpenURLWithString:(NSString *)urlString
{
    UIApplication *app = [UIApplication sharedApplication];
    
    NSURL * url = [NSURL URLWithString:urlString];
    
    if ([app openURL:url]) {
        [app openURL:url];
        return YES;
    }else{
        return NO;
    }
}

+ (void)wx_applicationTelWithString:(NSString *)phoneString
{
    NSMutableString *urlString = [NSMutableString stringWithFormat:@"tel://%@",phoneString];
    [self wx_applicationOpenURLWithString:urlString];
}

+ (void)wx_applicationSMSWithString:(NSString *)smsString
{
    NSMutableString *urlString = [NSMutableString stringWithFormat:@"sms://%@",smsString];
    [self wx_applicationOpenURLWithString:urlString];
}

+ (void)wx_applicationMailtoWithString:(NSString *)mailtoString
{
    NSMutableString *urlString = [NSMutableString stringWithFormat:@"mailto://%@",mailtoString];
    [self wx_applicationOpenURLWithString:urlString];
}

@end
