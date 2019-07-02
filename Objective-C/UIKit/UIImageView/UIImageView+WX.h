@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (WX)

+ (UIImageView *)wx_imageViewWithImageName:(NSString *)imageName;

+ (UIImageView *)wx_imageViewWithImageName:(NSString *)imageName
                                     frame:(CGRect)frame;

+ (UIImageView *)wx_imageViewWithImageName:(NSString *)imageName
                      highlightedImageName:(NSString *)highlightedImageName
                                     frame:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END
