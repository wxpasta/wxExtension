//
//  NSColor+SAPHelper.h
//  macSAP
//
//  Created by magic-devel on 2020/12/29.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSColor (SAPHelper)

+ (NSColor *)colorWithHex:(UInt32)hex alpha:(CGFloat)alpha;

+ (NSColor *)colorWithHexString:(id)hexString;


+ (NSColor *)colorWithRGB:(uint32_t)rgbValue;

+ (NSColor *)colorWithRGB:(uint32_t)rgbValue alpha:(CGFloat)alpha;

+ (NSColor *)colorWithRGBA:(uint32_t)rgbaValue;


+ (NSColor *)randomColor ;

@end

NS_ASSUME_NONNULL_END
