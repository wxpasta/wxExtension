//
//  MBProgressHUD+Extension.m
//  VRMAX
//
//  Created by AngieMita on 16/6/3.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

static const NSTimeInterval kMBProgressHUDTimeIntervalDelay = 3.0f;
static const BOOL kMBProgressHUDIsAnimated = YES;

#import "MBProgressHUD+Extension.h"

@implementation MBProgressHUD (Extension)

+ (void)showError:(NSString *)error
          addedTo:(UIView *)view
{
    [MBProgressHUD showError:error
                     addedTo:view
                    animated:kMBProgressHUDIsAnimated
                  afterDelay:kMBProgressHUDTimeIntervalDelay];
}

+ (void)showError:(NSString *)error
          addedTo:(UIView *)view
         animated:(BOOL)animated
{
    [MBProgressHUD showError:error
                     addedTo:view
                    animated:animated
                  afterDelay:kMBProgressHUDTimeIntervalDelay];
}

+ (void)showError:(NSString *)error
          addedTo:(UIView *)view
       afterDelay:(NSTimeInterval)delay
{
    [MBProgressHUD showError:error
                     addedTo:view
                    animated:kMBProgressHUDIsAnimated
                  afterDelay:delay];
}

+ (void)showError:(NSString *)error
          addedTo:(UIView *)view
         animated:(BOOL)animated
       afterDelay:(NSTimeInterval)delay
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:animated];
    hud.mode = MBProgressHUDModeText;
    hud.labelText = error;
    [hud hide:YES afterDelay:delay];
}


@end
