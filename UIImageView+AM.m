#import "UIImageView+AM.h"

@implementation UIImageView (AM)

+ (nullable UIImageView *)wx_imageViewWithImageName:(nullable NSString *)imageName frame:(CGRect)frame
{
    UIImage *image = [UIImage imageNamed:imageName];
    UIImageView *iconView = [[UIImageView alloc] initWithImage:image];
    iconView.frame = frame;
    return iconView;
}


+ (nullable UIImageView *)wx_imageViewWithImageName:(nullable NSString *)imageName
                               highlightedImageName:(nullable NSString *)highlightedImageName
                                              frame:(CGRect)frame
{
    UIImageView *iconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]
                                              highlightedImage:[UIImage imageNamed:highlightedImageName]];
    iconView.frame = frame;
    return iconView;
}

@end
