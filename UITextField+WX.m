//
//  UITextField+WX.m
//  VRMAX
//
//  Created by AngieMita on 16/6/8.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "UITextField+WX.h"

static NSString * const kTextFieldPlaceholderLabelFont = @"_placeholderLabel.font";
static NSString * const kTextFieldPlaceholderLabelTextColor = @"_placeholderLabel.textColor";


@implementation UITextField (WX)

- (void)setWx_placeHolderTextFont:(UIColor *)font
{
    [self setValue:font forKeyPath:kTextFieldPlaceholderLabelFont];
}

- (void)setWx_placeHolderTextColor:(UIColor *)color
{
    [self setValue:color forKeyPath:kTextFieldPlaceholderLabelTextColor];
}

- (UIColor *)wx_placeHolderTextColor
{
    return [self valueForKeyPath:kTextFieldPlaceholderLabelTextColor];
}

- (UIColor *)wx_placeHolderTextFont
{
    return [self valueForKeyPath:kTextFieldPlaceholderLabelFont];
}

@end
