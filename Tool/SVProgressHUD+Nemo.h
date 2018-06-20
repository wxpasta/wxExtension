//
//  SVProgressHUD+Nemo.h
//  iOS Demo
//
//  Created by 许宝吉 on 2018/5/18.
//

#import "SVProgressHUD.h"

@interface SVProgressHUD (Nemo)

+ (void)nemo_showMessage:(NSString *)string;

+ (void)nemo_showMessage:(NSString *)string delay:(NSTimeInterval)delay;


@end
