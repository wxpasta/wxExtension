//
//  UIImage+Rotate_Flip.m
//  BaiduOCR
//
//  Created by 王严 on 16/9/5.
//  Copyright © 2016年 GLK. All rights reserved.
//

#import "UIImage+Rotate_Flip.h"

@implementation UIImage (Rotate_Flip)

/*
 * @brief rotate image 90 with CounterClockWise
 */
- (UIImage*)rotate90CounterClockwise
{
    UIImage *image = nil;
    switch (self.imageOrientation) {
        case UIImageOrientationUp:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationLeft];
            break;
        }
        case UIImageOrientationDown:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationRight];
            break;
        }
        case UIImageOrientationLeft:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationDown];
            break;
        }
        case UIImageOrientationRight:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationUp];
            break;
        }
        case UIImageOrientationUpMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationRightMirrored];
            break;
        }
        case UIImageOrientationDownMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationLeftMirrored];
            break;
        }
        case UIImageOrientationLeftMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationUpMirrored];
            break;
        }
        case UIImageOrientationRightMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationDownMirrored];
            break;
        }
        default:
            break;
    }
    
    return image;
}

/*
 * @brief rotate image 90 with Clockwise
 */
- (UIImage*)rotate90Clockwise
{
    UIImage *image = nil;
    switch (self.imageOrientation) {
        case UIImageOrientationUp:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationRight];
            break;
        }
        case UIImageOrientationDown:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationLeft];
            break;
        }
        case UIImageOrientationLeft:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationUp];
            break;
        }
        case UIImageOrientationRight:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationDown];
            break;
        }
        case UIImageOrientationUpMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationLeftMirrored];
            break;
        }
        case UIImageOrientationDownMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationRightMirrored];
            break;
        }
        case UIImageOrientationLeftMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationDownMirrored];
            break;
        }
        case UIImageOrientationRightMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationUpMirrored];
            break;
        }
        default:
            break;
    }
    
    return image;
}

/*
 * @brief rotate image 180 degree
 */
- (UIImage*)rotate180
{
    UIImage *image = nil;
    switch (self.imageOrientation) {
        case UIImageOrientationUp:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationDown];
            break;
        }
        case UIImageOrientationDown:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationUp];
            break;
        }
        case UIImageOrientationLeft:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationRight];
            break;
        }
        case UIImageOrientationRight:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationLeft];
            break;
        }
        case UIImageOrientationUpMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationDownMirrored];
            break;
        }
        case UIImageOrientationDownMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationUpMirrored];
            break;
        }
        case UIImageOrientationLeftMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationRightMirrored];
            break;
        }
        case UIImageOrientationRightMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage
                                        scale:1
                                  orientation:UIImageOrientationLeftMirrored];
            break;
        }
        default:
            break;
    }
    
    return image;
}

/*
 * @brief rotate image to default orientation
 */
- (UIImage*)rotateImageToOrientationUp
{
    CGSize size = CGSizeMake(self.size.width * self.scale, self.size.height * self.scale);
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextClearRect(context, CGRectMake(0, 0, size.width, size.height));
    
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

/*
 * @brief flip horizontal
 */
- (UIImage*)flipHorizontal
{
    UIImage *image = nil;
    switch (self.imageOrientation) {
        case UIImageOrientationUp:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationUpMirrored];
            break;
        }
        case UIImageOrientationDown:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationDownMirrored];
            break;
        }
        case UIImageOrientationLeft:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationRightMirrored];
            break;
        }
        case UIImageOrientationRight:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationLeftMirrored];
            break;
        }
        case UIImageOrientationUpMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationUp];
            break;
        }
        case UIImageOrientationDownMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationDown];
            break;
        }
        case UIImageOrientationLeftMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationRight];
            break;
        }
        case UIImageOrientationRightMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationLeft];
            break;
        }
        default:
            break;
    }
    
    return image;
}

/*
 * @brief flip vertical
 */
- (UIImage*)flipVertical
{
    UIImage *image = nil;
    switch (self.imageOrientation) {
        case UIImageOrientationUp:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationDownMirrored];
            break;
        }
        case UIImageOrientationDown:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationUpMirrored];
            break;
        }
        case UIImageOrientationLeft:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationLeftMirrored];
            break;
        }
        case UIImageOrientationRight:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationRightMirrored];
            break;
        }
        case UIImageOrientationUpMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationDown];
            break;
        }
        case UIImageOrientationDownMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationUp];
            break;
        }
        case UIImageOrientationLeftMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationLeft];
            break;
        }
        case UIImageOrientationRightMirrored:
        {
            image = [UIImage imageWithCGImage:self.CGImage scale:1 orientation:UIImageOrientationRight];
            break;
        }
        default:
            break;
    }
    
    return image;
}

/*
 * @brief flip horizontal and vertical
 */
- (UIImage*)flipAll
{
    return [self rotate180];
}

+ (UIImage *)compressImage:(UIImage *)image toMaxFileSize:(NSInteger)maxFileSize
{
    CGFloat compression = 0.9f;
    CGFloat maxCompression = 0.1f;
    
    NSData *imageData = UIImageJPEGRepresentation(image, compression);
    
    while ([imageData length] > maxFileSize && compression > maxCompression) {
        compression -= 0.1;
        imageData = UIImageJPEGRepresentation(image, compression);
    }
    
    UIImage *compressedImage = [UIImage imageWithData:imageData];
    return compressedImage;
}

+ (UIImage *)compressImage:(UIImage *)image quality:(CGFloat)quality
{
    NSData *imageData = UIImageJPEGRepresentation(image, quality);
    
    UIImage *newImage = [UIImage imageWithData:imageData];
    return newImage;
}


- (UIImage *)compressImage:(UIImage *)sourceImage toTargetWidth:(CGFloat)targetWidth
{
    CGSize imageSize = sourceImage.size;
    
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    
    CGFloat targetHeight = (targetWidth / width) * height;
    
    UIGraphicsBeginImageContext(CGSizeMake(targetWidth, targetHeight));
    [sourceImage drawInRect:CGRectMake(0, 0, targetWidth, targetHeight)];
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

-(UIImage *) imageCompressForSize:(UIImage *)sourceImage targetSize:(CGSize)size
{
    UIImage *newImage = nil;
    CGSize imageSize = sourceImage.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    CGFloat targetWidth = size.width;
    CGFloat targetHeight = size.height;
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    CGPoint thumbnailPoint = CGPointMake(0.0, 0.0);
    if(CGSizeEqualToSize(imageSize, size) == NO){
        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;
        if(widthFactor > heightFactor){
            scaleFactor = widthFactor;
        }
        else{
            scaleFactor = heightFactor;
        }
        scaledWidth = width * scaleFactor;
        scaledHeight = height * scaleFactor;
        if(widthFactor > heightFactor){
            thumbnailPoint.y = (targetHeight - scaledHeight) * 0.5;
        }else if(widthFactor < heightFactor){
            thumbnailPoint.x = (targetWidth - scaledWidth) * 0.5;
        }
    }
    
    UIGraphicsBeginImageContext(size);
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width = scaledWidth;
    thumbnailRect.size.height = scaledHeight;
    [sourceImage drawInRect:thumbnailRect];
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    if(newImage == nil){
        NSLog(@"scale image fail");
    }
    UIGraphicsEndImageContext();
    return newImage;
}

- (UIImage *)imageCompressForWidth:(UIImage *)sourceImage targetWidth:(CGFloat)defineWidth
{
    UIImage *newImage = nil;
    CGSize imageSize = sourceImage.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    CGFloat targetWidth = defineWidth;
    CGFloat targetHeight = height / (width / targetWidth);
    CGSize size = CGSizeMake(targetWidth, targetHeight);
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    CGPoint thumbnailPoint = CGPointMake(0.0, 0.0);
    if(CGSizeEqualToSize(imageSize, size) == NO){
        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;
        if(widthFactor > heightFactor){
            scaleFactor = widthFactor;
        }
        else{
            scaleFactor = heightFactor;
        }
        scaledWidth = width * scaleFactor;
        scaledHeight = height * scaleFactor;
        if(widthFactor > heightFactor){
            thumbnailPoint.y = (targetHeight - scaledHeight) * 0.5;
        }else if(widthFactor < heightFactor){
            thumbnailPoint.x = (targetWidth - scaledWidth) * 0.5;
        }
    }
    UIGraphicsBeginImageContext(size);
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width = scaledWidth;
    thumbnailRect.size.height = scaledHeight;
    
    [sourceImage drawInRect:thumbnailRect];
    
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    if(newImage == nil){
        NSLog(@"scale image fail");
    }
    UIGraphicsEndImageContext();
    return newImage;
}

/*
 * 自动缩放到指定大小
 */
+ (UIImage *)thumbnailWithImage:(UIImage *)image size:(CGSize)asize
{
    UIImage *newimage;
    if (nil == image) {
        newimage = nil;
    }else{
        UIGraphicsBeginImageContext(asize);
        [image drawInRect:CGRectMake(0, 0, asize.width, asize.height)];
        newimage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }
    return newimage;
}

/*
 * 保持原来的长宽比，生成一个缩略图
 */
+ (UIImage *)thumbnailWithImageWithoutScale:(UIImage *)image size:(CGSize)asize
{
    UIImage *newimage;
    if (nil == image) {
        newimage = nil;
    }else{
        CGSize oldsize = image.size;
        CGRect rect;
        if (asize.width/asize.height > oldsize.width/oldsize.height) {
            rect.size.width = asize.height*oldsize.width/oldsize.height;
            rect.size.height = asize.height;
            rect.origin.x = (asize.width - rect.size.width)/2;
            rect.origin.y = 0;
        }
        else{
            rect.size.width = asize.width;
            rect.size.height = asize.width*oldsize.height/oldsize.width;
            rect.origin.x = 0;
            rect.origin.y = (asize.height - rect.size.height)/2;
        }
        UIGraphicsBeginImageContext(asize);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context, [[UIColor clearColor] CGColor]);
        UIRectFill(CGRectMake(0, 0, asize.width, asize.height));//clear background
        [image drawInRect:rect];
        newimage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }
    return newimage;
}


@end
