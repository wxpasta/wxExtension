#import <SVProgressHUD/SVProgressHUD.h>

@interface SVProgressHUD (AM)

+ (void)wx_showMaskTypeBlack;

+ (void)wx_showMaskType:(SVProgressHUDMaskType)maskType;

+ (void)wx_showMaskTypeBlackWithStatus:(NSString*)status;

+ (void)wx_showMaskType:(SVProgressHUDMaskType)maskType status:(NSString*)status;
@end
