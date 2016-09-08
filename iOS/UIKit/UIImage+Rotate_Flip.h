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
 * @brief flip Horizontal and rotate image 180 degree,compress
 */
+ (UIImage*)wx_custom4uImage:(UIImage *)image;

/*
 * @brief rotate image 180 degree and compress
 */
+ (UIImage*)wx_custom4uImage2:(UIImage *)image;

/*
 * @brief rotate image compress
 */
+ (UIImage*)wx_compression:(UIImage *)image;


@end
