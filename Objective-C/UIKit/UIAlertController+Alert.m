//
//  UIAlertController+Alert.m
//  
//
//  Created by 许宝吉 on 2018/7/23.
//  Copyright © 2018年 chenwei. All rights reserved.
//

#import "UIAlertController+Alert.h"

@implementation UIAlertController (Alert)

+ (void)alertControllerWithTitle:(NSString *)title
                         message:(NSString *)message
                cancelButtonName:(NSString *)cancelButtonName
                      controller:(UIViewController *)controller{
    
    UIAlertController *alertController = [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:cancelButtonName
                                                     style:UIAlertActionStyleCancel
                                                   handler:nil];
    [alertController addAction:action];
    [controller presentViewController:alertController animated:YES completion:nil];
}

@end
