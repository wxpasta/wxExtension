//
//  UIColor+CustomColor.m
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/21.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "UIColor+CustomColor.h"

@implementation UIColor (CustomColor)

+ (UIColor *(^)(int, float))customColor{
    return ^(int tone, float alpha){
        return [UIColor colorWithRed:((tone & 0xFF0000) >> 16)/255.0
                               green:((tone & 0xFF00) >> 8)/255.0
                                blue:((tone & 0xFF))/255.0
                               alpha:alpha];
    };
}

@end
