//
//  UIActionSheet+WX.m
//  WXCategories
//
//  Created by 巴糖 on 2016/9/30.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "UIActionSheet+WX.h"

@implementation UIActionSheet (WX)

- (BOOL)isButtonWithTitle:(NSString *)title atIndex:(NSInteger)buttonIndex {
    NSString *buttonTitle = [self buttonTitleAtIndex:buttonIndex];
    return [buttonTitle isEqualToString:title];
}

@end
