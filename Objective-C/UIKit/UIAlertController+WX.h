//
//  UIAlertController+WX.h
//  WXCategories
//
//  Created by 巴糖 on 2018/8/6.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIAlertController (WX)

- (UIAlertAction *)addActionWithTitle:(nullable NSString *)title
                                style:(UIAlertActionStyle)style
                            isEnabled:(BOOL)isEnabled
                              handler:(void (^ __nullable)(UIAlertAction *action))handler;

@end

NS_ASSUME_NONNULL_END
