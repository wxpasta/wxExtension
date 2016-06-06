//
//  UIImageView+WX.m
//  VRMAX
//
//  Created by AngieMita on 16/6/6.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "UIImageView+WX.h"

@implementation UIImageView (WX)

+ (nonnull UIImageView *)wx_imageViewWithImageName:(nonnull NSString *)imageName
{
    return [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
}

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
