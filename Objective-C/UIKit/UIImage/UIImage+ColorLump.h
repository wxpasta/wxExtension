//
//  UIImage+ColorLump.h
//  WXCategories
//
//  Created by 许宝吉 on 2023/7/3.
//  Copyright © 2023 许宝吉. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (ColorLump)

+ (UIImage *)cl_imageWithColor:(UIColor *)color size:(CGSize)size;


+ (UIImage *)cl_createImageWithColor:(UIColor *)color size:(CGSize)size radius:(CGFloat)radius;

@end

NS_ASSUME_NONNULL_END
