//
//  UIColor+CustomTextFieldColor.h
//  TestAPP
//
//  Created by magic-devel on 2020/9/11.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// textField 缩写 txtfld 文本输入框
@interface UIColor (CustomTextFieldColor)

// #F8F8F8 100%
+ (UIColor *)txtfldGrayColor;

// #333333 100%
+ (UIColor *)txtfldBlackColor;

// #999999 100%
+ (UIColor *)txtfldPlaceholderGrayColor;

@end

NS_ASSUME_NONNULL_END
