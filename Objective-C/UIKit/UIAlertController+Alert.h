//
//  UIAlertController+Alert.h
//  
//
//  Created by 许宝吉 on 2018/7/23.
//  Copyright © 2018年 chenwei. All rights reserved.
//

@import UIKit;

@interface UIAlertController (Alert)

+ (void)alertControllerWithTitle:(NSString *)title
                         message:(NSString *)message
                cancelButtonName:(NSString *)cancelButtonName
                      controller:(UIViewController *)controller;

@end
