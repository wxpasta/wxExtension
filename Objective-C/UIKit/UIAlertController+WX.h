//
//  UIAlertController+WX.h
//  BJCategory
//
//  Created by 许宝吉 on 2018/8/6.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (WX)

- (UIAlertAction *)addActionWithTitle:(nullable NSString *)title
                                style:(UIAlertActionStyle)style
                            isEnabled:(BOOL)isEnabled
                              handler:(void (^ __nullable)(UIAlertAction *action))handler;

@end
