#import "UIImageView+WX.h"

@implementation UIImageView (WX)

+ (UIImageView *)wx_imageViewWithImageName:(NSString *)imageName
{
    return [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
}

+ ( UIImageView *)wx_imageViewWithImageName:(NSString *)imageName frame:(CGRect)frame
{
    UIImage *image = [UIImage imageNamed:imageName];
    UIImageView *iconView = [[UIImageView alloc] initWithImage:image];
    iconView.frame = frame;
    return iconView;
}

+ (UIImageView *)wx_imageViewWithImageName:(NSString *)imageName
                      highlightedImageName:(NSString *)highlightedImageName
                                     frame:(CGRect)frame
{
    UIImageView *iconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]
                                              highlightedImage:[UIImage imageNamed:highlightedImageName]];
    iconView.frame = frame;
    return iconView;
}

@end
