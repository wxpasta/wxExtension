#import <UIKit/UIKit.h>

@interface UIColor (WX)

///< 根据颜色生成图片
+ (UIImage *)imageWithColor:(UIColor *)color;

///< 根据颜色、图片大小 生成图片
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

/**
 *  十六进制字符串获取颜色
 *
 *  @param color color:支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color;

/**
 *  从十六进制字符串获取颜色，
 *
 *  @param color 支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 *  @param alpha 0.0~1.0
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;


+ (UIColor *)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alpha;


+ (UIColor *)wx_colorWithRGBAWithRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(NSInteger)alpha;

@end
