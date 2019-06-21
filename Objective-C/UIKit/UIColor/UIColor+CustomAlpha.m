//
//  UIColor+CustomAlpha.m
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/21.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "UIColor+CustomAlpha.h"

@implementation UIColor (CustomAlpha)

+ (UIColor *)blackColorWithAlpha:(CGFloat)alpha{
    return [[UIColor blackColor] colorWithAlphaComponent:alpha];
}

+ (UIColor *)darkGrayColorWithAlpha:(CGFloat)alpha{
    return [[UIColor darkGrayColor] colorWithAlphaComponent:alpha];
}

+ (UIColor *)lightGrayColorWithAlpha:(CGFloat)alpha{
    return [[UIColor lightGrayColor] colorWithAlphaComponent:alpha];
}

+ (UIColor *)whiteColorWithAlpha:(CGFloat)alpha{
    return [[UIColor whiteColor] colorWithAlphaComponent:alpha];
}

+ (UIColor *)grayColorWithAlpha:(CGFloat)alpha{
    return [[UIColor grayColor] colorWithAlphaComponent:alpha];
}

+ (UIColor *)redColorWithAlpha:(CGFloat)alpha{
    return [[UIColor redColor] colorWithAlphaComponent:alpha];
}

+ (UIColor *)greenColorWithAlpha:(CGFloat)alpha{
    return [[UIColor greenColor] colorWithAlphaComponent:alpha];
}

+ (UIColor *)blueColorWithAlpha:(CGFloat)alpha{
    return [[UIColor blueColor] colorWithAlphaComponent:alpha];
}

+ (UIColor *)cyanColorWithAlpha:(CGFloat)alpha{
    return [[UIColor cyanColor] colorWithAlphaComponent:alpha];
}

+ (UIColor *)yellowColorWithAlpha:(CGFloat)alpha{
    return [[UIColor yellowColor] colorWithAlphaComponent:alpha];
}

+ (UIColor *)magentaColorWithAlpha:(CGFloat)alpha{
    return [[UIColor magentaColor] colorWithAlphaComponent:alpha];
}

+ (UIColor *)orangeColorWithAlpha:(CGFloat)alpha{
    return [[UIColor orangeColor] colorWithAlphaComponent:alpha];
}

+ (UIColor *)purpleColorWithAlpha:(CGFloat)alpha{
    return [[UIColor purpleColor] colorWithAlphaComponent:alpha];
}

+ (UIColor *)brownColorWithAlpha:(CGFloat)alpha{
    return [[UIColor brownColor] colorWithAlphaComponent:alpha];
}

@end
