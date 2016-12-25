//
//  UIAlertView+WX.m
//  ustar
//
//  Created by imac on 2016/9/30.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

#import "UIAlertView+WX.h"

@implementation UIAlertView (WX)

- (BOOL)wx_isEquaTitle:(NSString *)title buttonIndex:(NSInteger)buttonIndex
{
    return [[self buttonTitleAtIndex:buttonIndex] isEqualToString:title];
}

@end
