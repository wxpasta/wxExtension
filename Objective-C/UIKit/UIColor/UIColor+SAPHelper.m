//
//  UIColor+SAPHelper.m
//  SapIntercept
//
//  Created by magic-devel on 2020/10/15.
//  Copyright © 2020 Magic. All rights reserved.
//

#import "UIColor+SAPHelper.h"

@implementation UIColor (SAPHelper)

+ (UIColor *)sapColorWithHexString:(NSString *)stringToConvert {
    if([stringToConvert hasPrefix:@"#"]) {
        stringToConvert = [stringToConvert substringFromIndex:1];
    }
    
    if (stringToConvert.length == 6) {
        stringToConvert = [NSString stringWithFormat:@"%@FF",stringToConvert];
    }
    NSScanner *scanner = [NSScanner scannerWithString:stringToConvert];
    unsigned hexNum;
    
    if(![scanner scanHexInt:&hexNum]){
        return nil;
    }
    return [self sapColorWithRGBHex:hexNum];
}

+ (UIColor *)sapColorWithRGBHex:(UInt32)hex {
    //    int r = (hex >>16) &0xFF;
    //    int g = (hex >>8) &0xFF;
    //    int b = (hex) &0xFF;
    int r = (hex >>24) &0xFF;
    int g = (hex >>16) &0xFF;
    int b = (hex >>8) &0xFF;
    int a = (hex) &0xFF;
    return [UIColor colorWithRed:r /255.0
                           green:g /255.0
                            blue:b /255.0
                           alpha:a /255.0];
}


@end
