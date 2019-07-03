//
//  UIAlertView+WX.m
//  WXCategories
//
//  Created by 巴糖 on 2016/9/30.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "UIAlertView+WX.h"

@implementation UIAlertView (WX)

- (BOOL)wx_isEquaTitle:(NSString *)title
           buttonIndex:(NSInteger)buttonIndex
{
    return [[self buttonTitleAtIndex:buttonIndex] isEqualToString:title];
}

@end
