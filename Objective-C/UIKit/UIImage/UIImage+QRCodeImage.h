//
//  UIImage+QRCodeImage.h
//  vmp
//
//  Created by magic-devel on 2020/9/23.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (QRCodeImage)

/**
 *  1.生成一个二维码
 *
 *  @param string 字符串
 *  @param width  二维码宽度
 *
 *  @return return value description
 */
+ (UIImage *_Nullable)codeImageWithString:(NSString *_Nullable)string
                                     size:(CGFloat)width;

/**
 *  2.生成一个二维码
 *
 *  @param string 字符串
 *  @param width  二维码宽度
 *  @param color  二维码颜色
 *
 *  @return <#return value description#>
 */
+ (UIImage *_Nullable)codeImageWithString:(NSString *_Nullable)string
                                     size:(CGFloat)width
                                    color:(UIColor *_Nullable)color;
/**
 *  3.生成一个二维码
 *
 *  @param string    字符串
 *  @param width     二维码宽度
 *  @param color     二维码颜色
 *  @param icon      头像
 *  @param iconWidth 头像宽度，建议宽度小于二维码宽度的1/4
 *
 *  @return <#return value description#>
 */
+ (UIImage *_Nullable)codeImageWithString:(NSString *_Nullable)string
                                     size:(CGFloat)width
                                    color:(UIColor *_Nullable)color
                                     icon:(UIImage *_Nullable)icon
                                iconWidth:(CGFloat)iconWidth;
@end

NS_ASSUME_NONNULL_END
