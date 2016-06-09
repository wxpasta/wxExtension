//
//  UIColor+WX.m
//  VRMAX
//
//  Created by AngieMita on 16/6/8.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "UIColor+WX.h"

#define kImageWidth  1
#define kImageHeight 1

@implementation UIColor (WX)

+ (UIImage *)imageWithColor:(UIColor *)color
{
    return [[self class] imageWithColor:color size:CGSizeMake(kImageWidth, kImageHeight)];
}

///< 根据颜色、图片大小 生成图片
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size
{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    
    // 画图开始
    UIGraphicsBeginImageContext(CGSizeMake(kImageWidth, kImageHeight));
    // 获取图形设备上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 设置填充颜色
    CGContextSetFillColorWithColor(context, color.CGColor);
    // 用所设置的填充颜色填充
    CGContextFillRect(context, rect);
    // 得到图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    // 画图结束，解释资源
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha
{
    //删除字符串中的空格
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6)
    {
        return [UIColor clearColor];
    }
    
    // strip 0X if it appears
    //如果是0x开头的，那么截取字符串，字符串从索引为2的位置开始，一直到末尾
    if ([cString hasPrefix:@"0X"])
    {
        cString = [cString substringFromIndex:2];
    }
    
    //如果是#开头的，那么截取字符串，字符串从索引为1的位置开始，一直到末尾
    if ([cString hasPrefix:@"#"])
    {
        cString = [cString substringFromIndex:1];
    }
    
    if ([cString length] != 6)
        
    {
        return [UIColor clearColor];
    }
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    
    //r
    NSString *rString = [cString substringWithRange:range];
    //g
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    //b
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}

//默认alpha值为1
+ (UIColor *)colorWithHexString:(NSString *)color
{
    return [self colorWithHexString:color alpha:1.0f];
}

+ (UIColor *)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((CGFloat)((hexValue & 0xFF0000) >> 16)) / 255.0
                           green:((CGFloat)((hexValue & 0xFF00) >> 8)) / 255.0
                            blue:((CGFloat)(hexValue & 0xFF))/255.0
                           alpha:alpha];
}

+ (UIColor *)wx_colorWithRGBAWithRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(NSInteger)alpha
{
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}


@end
