#import <UIKit/UIKit.h>

@interface UIImageView (AM)

+ (nullable UIImageView *)wx_imageViewWithImageName:(nullable NSString *)imageName
                                              frame:(CGRect)frame;

+ (nullable UIImageView *)wx_imageViewWithImageName:(nullable NSString *)imageName
                               highlightedImageName:(nullable NSString *)highlightedImageName
                                              frame:(CGRect)frame;
@end
