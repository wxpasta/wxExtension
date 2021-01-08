//
//  NSColor+SAPHelper.m
//  macSAP
//
//  Created by magic-devel on 2020/12/29.
//

#import "NSColor+SAPHelper.h"

@implementation NSColor (SAPHelper)

+ (NSColor *)colorWithHex:(UInt32)hex alpha:(CGFloat)alpha {
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;
    
    return [NSColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:alpha];
}

+ (NSColor *)colorWithHexString:(id)hexString {
    if (![hexString isKindOfClass:[NSString class]] || [hexString length] == 0) {
        return [NSColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:1.0f];
    }
    
    const char *s = [hexString cStringUsingEncoding:NSASCIIStringEncoding];
    if (*s == '#') {
        ++s;
    }
    unsigned long long value = strtoll(s, nil, 16);
    int r, g, b, a;
    switch (strlen(s)) {
        case 2:
            // xx
            r = g = b = (int)value;
            a = 255;
            break;
        case 3:
            // RGB
            r = ((value & 0xf00) >> 8);
            g = ((value & 0x0f0) >> 4);
            b = ((value & 0x00f) >> 0);
            r = r * 16 + r;
            g = g * 16 + g;
            b = b * 16 + b;
            a = 255;
            break;
        case 6:
            // RRGGBB
            r = (value & 0xff0000) >> 16;
            g = (value & 0x00ff00) >>  8;
            b = (value & 0x0000ff) >>  0;
            a = 255;
            break;
        default:
            // RRGGBBAA
            r = (value & 0xff000000) >> 24;
            g = (value & 0x00ff0000) >> 16;
            b = (value & 0x0000ff00) >>  8;
            a = (value & 0x000000ff) >>  0;
            break;
    }
    return [NSColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a/255.0f];
}

+ (NSColor *)colorWithRGB:(uint32_t)rgbValue {
    float red = ((rgbValue & 0xFF0000) >> 16) / 255.0;
    float green = ((rgbValue & 0x00FF00) >> 8) / 255.0;
    float blue = ((rgbValue & 0x0000FF)) / 255.0;
    return [NSColor colorWithRed:red green:green blue:blue alpha:1.0];
}

+ (NSColor *)colorWithRGB:(uint32_t)rgbValue alpha:(CGFloat)alpha {
    float red = ((rgbValue & 0xFF0000) >> 16) / 255.0;
    float green = ((rgbValue & 0x00FF00) >> 8) / 255.0;
    float blue = ((rgbValue & 0x0000FF)) / 255.0;
    return [NSColor colorWithRed:red green:green blue:blue alpha:alpha];
}

+ (NSColor *)colorWithRGBA:(uint32_t)rgbaValue {
    float alpha = ((rgbaValue & 0xFF000000) >> 24) / 255.0;
    float red = ((rgbaValue & 0x00FF0000) >> 16) / 255.0;
    float green = ((rgbaValue & 0x0000FF00) >> 8) / 255.0;
    float blue = (rgbaValue & 0x000000FF) / 255.0;
    return [NSColor colorWithRed:red green:green blue:blue alpha:alpha];
}


+ (NSColor *)randomColor {
    NSColor * randomColor = [NSColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
    return randomColor;
}

@end
