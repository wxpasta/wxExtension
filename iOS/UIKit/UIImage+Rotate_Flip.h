//
//  UIImage+Rotate_Flip.h
//  BaiduOCR
//
//  Created by 王严 on 16/9/5.
//  Copyright © 2016年 GLK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Rotate_Flip)

/*
 * @brief rotate image 90 withClockWise
 */
- (UIImage*)rotate90Clockwise;

/*
 * @brief rotate image 90 counterClockwise
 */
- (UIImage*)rotate90CounterClockwise;

/*
 * @brief rotate image 180 degree
 */
- (UIImage*)rotate180;

/*
 * @brief rotate image to default orientation
 */
- (UIImage*)rotateImageToOrientationUp;

/*
 * @brief flip horizontal
 */
- (UIImage*)flipHorizontal;

/*
 * @brief flip vertical
 */
- (UIImage*)flipVertical;

/*
 * @brief flip horizontal and vertical
 */
- (UIImage*)flipAll;


/*
 * 压缩图片质量(图片体积减小,像素不变)
 * 压缩系数不宜太低，通常是0.3~0.7，过小则可能会出现黑边等。
 */
+ (UIImage *)compressImage:(UIImage *)image quality:(CGFloat)quality;

/*
 * 压缩图片质量(图片体积减小,像素不变),图片大小不超过设定值
 */
+ (UIImage *)compressImage:(UIImage *)image toMaxFileSize:(NSInteger)maxFileSize;

/*
 *
 *  压缩图片至目标尺寸
 *
 *  @param sourceImage 源图片
 *  @param targetWidth 图片最终尺寸的宽
 *
 *  @return 返回按照源图片的宽、高比例压缩至目标宽、高的图片
 */
- (UIImage *)compressImage:(UIImage *)sourceImage toTargetWidth:(CGFloat)targetWidth;

- (UIImage *)imageCompressForSize:(UIImage *)sourceImage targetSize:(CGSize)size;
- (UIImage *)imageCompressForWidth:(UIImage *)sourceImage targetWidth:(CGFloat)defineWidth;

/*
 * 自动缩放到指定大小
 */
+ (UIImage *)thumbnailWithImage:(UIImage *)image size:(CGSize)asize;
/*
 * 保持原来的长宽比，生成一个缩略图
 */
+ (UIImage *)thumbnailWithImageWithoutScale:(UIImage *)image size:(CGSize)asize;
@end
