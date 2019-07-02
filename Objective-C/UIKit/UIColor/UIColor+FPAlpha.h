//
//  UIColor+FPAlpha.h
//  WXCategories
//
//  Created by 巴糖 on 2018/10/31.
//  Copyright © 2018 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (FPAlpha)
    
+ (UIColor *(^)(CGFloat))ffl_black;
+ (UIColor *(^)(CGFloat))ffl_darkGray;
+ (UIColor *(^)(CGFloat))ffl_lightGray;
+ (UIColor *(^)(CGFloat))ffl_white;
+ (UIColor *(^)(CGFloat))ffl_gray;
+ (UIColor *(^)(CGFloat))ffl_red;
+ (UIColor *(^)(CGFloat))ffl_green;
+ (UIColor *(^)(CGFloat))ffl_blue;
+ (UIColor *(^)(CGFloat))ffl_cyan;
+ (UIColor *(^)(CGFloat))ffl_yellow;
+ (UIColor *(^)(CGFloat))ffl_magenta;
+ (UIColor *(^)(CGFloat))ffl_orange;
+ (UIColor *(^)(CGFloat))ffl_purple;
+ (UIColor *(^)(CGFloat))ffl_brown;

@end

NS_ASSUME_NONNULL_END
