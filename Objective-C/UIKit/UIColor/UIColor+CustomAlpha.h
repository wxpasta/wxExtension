//
//  UIColor+CustomAlpha.h
//  WXCategories
//
//  Created by 巴糖 on 2019/6/21.
//  Copyright © 2019 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

/** Store Custom Alpha */
@interface UIColor (CustomAlpha)

+ (UIColor *)blackColorWithAlpha:(CGFloat)alpha;

+ (UIColor *)darkGrayColorWithAlpha:(CGFloat)alpha;

+ (UIColor *)lightGrayColorWithAlpha:(CGFloat)alpha;

+ (UIColor *)whiteColorWithAlpha:(CGFloat)alpha;

+ (UIColor *)grayColorWithAlpha:(CGFloat)alpha;

+ (UIColor *)redColorWithAlpha:(CGFloat)alpha;

+ (UIColor *)greenColorWithAlpha:(CGFloat)alpha;

+ (UIColor *)blueColorWithAlpha:(CGFloat)alpha;

+ (UIColor *)cyanColorWithAlpha:(CGFloat)alpha;

+ (UIColor *)yellowColorWithAlpha:(CGFloat)alpha;

+ (UIColor *)magentaColorWithAlpha:(CGFloat)alpha;

+ (UIColor *)orangeColorWithAlpha:(CGFloat)alpha;

+ (UIColor *)purpleColorWithAlpha:(CGFloat)alpha;

+ (UIColor *)brownColorWithAlpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
