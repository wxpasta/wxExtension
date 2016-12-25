#import "SVProgressHUD+AM.h"

@implementation SVProgressHUD (AM)

+ (void)wx_showMaskTypeBlack
{
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeBlack];
    [SVProgressHUD show];
}

+ (void)wx_showMaskType:(SVProgressHUDMaskType)maskType
{
    [SVProgressHUD setDefaultMaskType:maskType];
    [SVProgressHUD show];
}

+ (void)wx_showMaskTypeBlackWithStatus:(NSString*)status
{
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeBlack];
    [SVProgressHUD showWithStatus:status];
}

+ (void)wx_showMaskType:(SVProgressHUDMaskType)maskType status:(NSString*)status
{
    [SVProgressHUD setDefaultMaskType:maskType];
    [SVProgressHUD showWithStatus:status];
}
@end
