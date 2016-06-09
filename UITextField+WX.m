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

@dynamic wx_placeHolderTextFont;
@dynamic wx_placeHolderTextColor;

- (void)setWx_placeHolderTextFont:(UIColor *)font
{
    [self setValue:font forKeyPath:kTextFieldPlaceholderLabelFont];
}

- (void)setWx_placeHolderTextColor:(UIColor *)color
{
    [self setValue:color forKeyPath:kTextFieldPlaceholderLabelTextColor];
}

@end
