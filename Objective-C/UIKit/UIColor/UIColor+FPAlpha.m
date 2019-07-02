//
//  UIColor+FPAlpha.m
//  WXCategories
//
//  Created by 巴糖 on 2018/10/31.
//  Copyright © 2018 巴糖. All rights reserved.
//

#import "UIColor+FPAlpha.h"

@implementation UIColor (FPAlpha)

    
+ (UIColor *(^)(CGFloat))ffl_black{
    return ^(CGFloat alpha){
        return [[UIColor blackColor] colorWithAlphaComponent:alpha];
    };
}
+ (UIColor *(^)(CGFloat))ffl_darkGray{
    return ^(CGFloat alpha){
        return [[UIColor darkGrayColor] colorWithAlphaComponent:alpha];
    };
}
+ (UIColor *(^)(CGFloat))ffl_lightGray{
    return ^(CGFloat alpha){
        return [[UIColor lightGrayColor] colorWithAlphaComponent:alpha];
    };
}
+ (UIColor *(^)(CGFloat))ffl_white{
    return ^(CGFloat alpha){
        return [[UIColor whiteColor] colorWithAlphaComponent:alpha];
    };
}
+ (UIColor *(^)(CGFloat))ffl_gray{
    return ^(CGFloat alpha){
        return [[UIColor grayColor] colorWithAlphaComponent:alpha];
    };
}
+ (UIColor *(^)(CGFloat))ffl_red{
    return ^(CGFloat alpha){
        return [[UIColor redColor] colorWithAlphaComponent:alpha];
    };
}
+ (UIColor *(^)(CGFloat))ffl_green{
    return ^(CGFloat alpha){
        return [[UIColor greenColor] colorWithAlphaComponent:alpha];
    };
}
+ (UIColor *(^)(CGFloat))ffl_blue{
    return ^(CGFloat alpha){
        return [[UIColor blueColor] colorWithAlphaComponent:alpha];
    };
}
+ (UIColor *(^)(CGFloat))ffl_cyan{
    return ^(CGFloat alpha){
        return [[UIColor cyanColor] colorWithAlphaComponent:alpha];
    };
}
+ (UIColor *(^)(CGFloat))ffl_yellow{
    return ^(CGFloat alpha){
        return [[UIColor yellowColor] colorWithAlphaComponent:alpha];
    };
}
+ (UIColor *(^)(CGFloat))ffl_magenta{
    return ^(CGFloat alpha){
        return [[UIColor magentaColor] colorWithAlphaComponent:alpha];
    };
}
+ (UIColor *(^)(CGFloat))ffl_orange{
    return ^(CGFloat alpha){
        return [[UIColor orangeColor] colorWithAlphaComponent:alpha];
    };
}
+ (UIColor *(^)(CGFloat))ffl_purple{
    return ^(CGFloat alpha){
        return [[UIColor purpleColor] colorWithAlphaComponent:alpha];
    };
}
+ (UIColor *(^)(CGFloat))ffl_brown{
    return ^(CGFloat alpha){
        return [[UIColor brownColor] colorWithAlphaComponent:alpha];
    };
}

@end
