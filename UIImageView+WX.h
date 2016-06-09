//
//  UIImageView+WX.h
//  VRMAX
//
//  Created by AngieMita on 16/6/6.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (WX)

+ (nonnull UIImageView *)wx_imageViewWithImageName:(nonnull NSString *)imageName;

+ (nullable UIImageView *)wx_imageViewWithImageName:(nullable NSString *)imageName
                                              frame:(CGRect)frame;

+ (nullable UIImageView *)wx_imageViewWithImageName:(nullable NSString *)imageName
                               highlightedImageName:(nullable NSString *)highlightedImageName
                                              frame:(CGRect)frame;

@end
