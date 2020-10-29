//
//  UITextField+PrivatePlaceholder.m
//  TestAPP
//
//  Created by magic-devel on 2020/9/11.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import "UITextField+PrivatePlaceholder.h"

static NSString * const kTextFieldPlaceholderLabelFont = @"_placeholderLabel.font";
static NSString * const kTextFieldPlaceholderLabelTextColor = @"_placeholderLabel.textColor";
static UIColor * tempPlaceHolderTextColor = nil; // iOS 13

@implementation UITextField (PrivatePlaceholder)


- (void)setPlaceHolderTextColor:(UIColor *)color {
    if (@available(iOS 13, *)) {
        NSString *placeholder = self.placeholder;
        if (placeholder.length > 0) {
            NSMutableAttributedString *placeholderString = [[NSMutableAttributedString alloc] initWithString:placeholder attributes:@{NSForegroundColorAttributeName : color}];
            self.attributedPlaceholder = placeholderString;
            tempPlaceHolderTextColor = color;
        }
    }else{
        [self setValue:color forKeyPath:kTextFieldPlaceholderLabelTextColor];
    }
}

- (UIColor *)placeHolderTextColor {
    if (@available(iOS 13, *)) {
        return tempPlaceHolderTextColor;
    }
    return [self valueForKeyPath:kTextFieldPlaceholderLabelTextColor];
}

@end
