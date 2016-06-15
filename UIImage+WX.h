//
//  UIImage+WX.h
//  VRMAX
//
//  Created by AngieMita on 16/6/10.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (WX)

+ (UIImage *)wx_imageRenderingModeAlwaysOriginalWithImageName:(NSString *)imageName;

/**
 *  图片的压缩方法
 *
 *  @param sourceImg   要被压缩的图片
 *  @param defineWidth 要被压缩的尺寸(宽)
 *
 *  @return 被压缩的图片
 */
+ (UIImage *)IMGCompressed:(UIImage *)sourceImg targetWidth:(CGFloat)defineWidth;

+ (UIImage *)getImage:(NSString *)videoURL;

/**
 *  通过视频的URL，获得视频缩略图
 *
 *  @param url 视频URL
 *
 *  @return首帧缩略图
 */
- (UIImage *)imageWithMediaURL:(NSURL *)url;

/**
 *  返回圆形图片
 */
- (instancetype)circleImage;

+ (instancetype)circleImage:(NSString *)name;

@end
