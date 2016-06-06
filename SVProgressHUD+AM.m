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
@end
