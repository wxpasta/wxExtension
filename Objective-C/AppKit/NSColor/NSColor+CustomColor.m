//
//  NSColor+CustomColor.m
//  WXMacCategories
//
//  Created by 许宝吉 on 2019/7/19.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "NSColor+CustomColor.h"

@implementation NSColor (CustomColor)

+ (NSColor *(^)(int, CGFloat))customColor {
    return ^(int tone, CGFloat alpha){
        return [NSColor colorWithRed:((tone & 0xFF0000) >> 16)/255.0
                               green:((tone & 0xFF00) >> 8)/255.0
                                blue:((tone & 0xFF))/255.0
                               alpha:alpha];
    };
}

+ (NSColor *(^)(CGFloat))white {
    return ^(CGFloat alpha){
        return self.customColor(0xffffff, alpha);
    };
}

+ (NSColor *(^)(CGFloat))black {
    return ^(CGFloat alpha){
        return self.customColor(0x000000, alpha);
    };
}
@end
