//
//  UIButton+FPLayer.h
//  WXCategories
//
//  Created by 巴糖 on 2018/11/13.
//  Copyright © 2018 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (FPLayer)

- (UIButton *(^)(CGFloat))ffl_cornerRadius;

- (UIButton *(^)(NSString *))ffl_title;

- (UIButton *(^)(UIColor *))ffl_titleColor;

- (UIButton *(^)(UIColor *))ffl_titleShadowColor;

- (UIButton *(^)(NSString *))ffl_imageName;

- (UIButton *(^)(NSString *))ffl_backgroundImageName;

- (UIButton *(^)(UIImage *))ffl_image;

- (UIButton *(^)(UIImage *))ffl_backgroundImage;


@end

NS_ASSUME_NONNULL_END
