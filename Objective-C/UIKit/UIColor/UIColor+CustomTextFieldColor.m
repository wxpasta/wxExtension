//
//  UIColor+CustomTextFieldColor.m
//  TestAPP
//
//  Created by magic-devel on 2020/9/11.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import "UIColor+CustomTextFieldColor.h"
#import "UIColor+Hex.h"

@implementation UIColor (CustomTextFieldColor)

// #F8F8F8 100%
+ (UIColor *)txtfldGrayColor {
    return [UIColor colorWithHexString:@"#F8F8F8"];
}

// #333333 100%
+ (UIColor *)txtfldBlackColor {
    return [UIColor colorWithHexString:@"#333333"];
}

// #999999 100%
+ (UIColor *)txtfldPlaceholderGrayColor {
    return [UIColor colorWithHexString:@"#999999"];
}

@end
