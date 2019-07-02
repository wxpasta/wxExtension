//
//  UIColor+CustomColor.m
//  WXCategories
//
//  Created by 巴糖 on 2019/6/21.
//  Copyright © 2019 巴糖. All rights reserved.
//

#import "UIColor+CustomColor.h"

@implementation UIColor (CustomColor)

+ (UIColor *(^)(int, CGFloat))customColor{
    return ^(int tone, CGFloat alpha){
        return [UIColor colorWithRed:((tone & 0xFF0000) >> 16)/255.0
                               green:((tone & 0xFF00) >> 8)/255.0
                                blue:((tone & 0xFF))/255.0
                               alpha:alpha];
    };
}

UIColor* UIColorFromHex(NSInteger colorInHex) {
    // colorInHex should be value like 0xFFFFFF
    return [UIColor colorWithRed:((CGFloat) ((colorInHex & 0xFF0000) >> 16)) / 0xFF
                           green:((CGFloat) ((colorInHex & 0xFF00)   >> 8))  / 0xFF
                            blue:((CGFloat)  (colorInHex & 0xFF))            / 0xFF
                           alpha:1.0];
}

@end


