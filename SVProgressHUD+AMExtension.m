#import "SVProgressHUD+AMExtension.h"

@implementation SVProgressHUD (AMExtension)

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
