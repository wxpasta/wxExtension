//
//  UIAlertController+WX.m
//  BJCategory
//
//  Created by 巴糖 on 2018/8/6.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "UIAlertController+WX.h"

@implementation UIAlertController (WX)

- (UIAlertAction *)addActionWithTitle:(nullable NSString *)title
                                style:(UIAlertActionStyle)style
                            isEnabled:(BOOL)isEnabled
                              handler:(void (^ __nullable)(UIAlertAction *action))handler{
    UIAlertAction *alertAction= [UIAlertAction actionWithTitle:title
                                                         style:style
                                                       handler:handler];
    alertAction.enabled = isEnabled;
    [self addAction:alertAction];
    return alertAction;
}
@end
