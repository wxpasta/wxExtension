//
//  UIColor+SAPHelper.h
//  SapIntercept
//
//  Created by magic-devel on 2020/10/15.
//  Copyright © 2020 Magic. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (SAPHelper)

+ (UIColor *)sapColorWithHexString:(NSString *)stringToConvert;

+ (UIColor *)sapColorWithRGBHex:(UInt32)hex;


@end

NS_ASSUME_NONNULL_END
