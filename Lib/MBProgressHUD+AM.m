#import "MBProgressHUD+AM.h"

static const NSTimeInterval kMBProgressHUDTimeIntervalDelay = 3.0f;
static const BOOL kMBProgressHUDIsAnimated = YES;

@implementation MBProgressHUD (AM)

+ (void)showText:(NSString *)text addedTo:(UIView *)view
{
    [MBProgressHUD showText:text addedTo:view animated:kMBProgressHUDIsAnimated afterDelay:kMBProgressHUDTimeIntervalDelay];
}

+ (void)showText:(NSString *)text addedTo:(UIView *)view animated:(BOOL)animated
{
    [MBProgressHUD showText:text addedTo:view animated:animated afterDelay:kMBProgressHUDTimeIntervalDelay];
}

+ (void)showText:(NSString *)text addedTo:(UIView *)view afterDelay:(NSTimeInterval)delay
{
    [MBProgressHUD showText:text addedTo:view animated:kMBProgressHUDIsAnimated afterDelay:delay];
}

+ (void)showText:(NSString *)text addedTo:(UIView *)view animated:(BOOL)animated afterDelay:(NSTimeInterval)delay
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:animated];
    hud.mode = MBProgressHUDModeText;
    hud.labelText = text;
    [hud hide:YES afterDelay:delay];
}

@end
