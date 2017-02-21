#import <UIKit/UIKit.h>

@interface UIColor (WX)

///< 根据颜色生成图片
+ (UIImage *)wx_imageWithColor:(UIColor *)color;

///< 根据颜色、图片大小 生成图片
+ (UIImage *)wx_imageWithColor:(UIColor *)color size:(CGSize)size;

/**
 *  十六进制字符串获取颜色
 *
 *  @param color color:支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 *  @return UIColor
 */
+ (UIColor *)wx_colorWithHexString:(NSString *)color;

/**
 *  从十六进制字符串获取颜色，
 *
 *  @param color 支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 *  @param alpha 0.0~1.0
 *
 *  @return UIColor
 */
+ (UIColor *)wx_colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

+ (UIColor *)wx_colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alpha;

+ (UIColor *)wx_colorWithRGBAWithRed:(NSInteger)red
                               green:(NSInteger)green
                                blue:(NSInteger)blue alpha:(NSInteger)alpha;

/**
 颜色转成十六进制字符串

 @param color UIColor
 @return 字符串
 */
+ (NSString *)wx_hexFromUIColor:(UIColor *)color;

+ (UIColor *)wx_randomColor;
@end
