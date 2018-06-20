
//
//  SVProgressHUD+Nemo.m
//  iOS Demo
//
//  Created by 许宝吉 on 2018/5/18.
//

#import "SVProgressHUD+Nemo.h"

@implementation SVProgressHUD (Nemo)

+ (void)nemo_showMessage:(NSString *)string{
    [SVProgressHUD nemo_showMessage:string delay:3];
}

+ (void)nemo_showMessage:(NSString *)string delay:(NSTimeInterval)delay{
    [SVProgressHUD showImage:[UIImage imageNamed:@"wrt424erte2342rx"] status:string];
    [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeNative];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeCustom]; //设置HUD背景图层的样式
    [SVProgressHUD setForegroundColor:[UIColor whiteColor]];
    [SVProgressHUD setBackgroundColor:[UIColor blackColor]];
    [SVProgressHUD setBackgroundLayerColor:[UIColor clearColor]];
    [SVProgressHUD dismissWithDelay:delay];
    
}



@end
