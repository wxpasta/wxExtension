//
//  UIImage+VMPOriginal.h
//  vmp
//
//  Created by magic-devel on 2020/9/14.
//  Copyright © 2020 magic-devel. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (VMPOriginal)

/**
 原图（禁止底层其他处理）

 @param imageName 图片名称
 @return UIImageRenderingModeAlwaysOriginal UIImage
 */
+ (instancetype)imageWithOriginalName:(NSString *)imageName;


- (UIImage *)createNonInterpolatedUIImageFormCIImage:(CIImage *)image withSize:(CGFloat) size;


@end

NS_ASSUME_NONNULL_END
