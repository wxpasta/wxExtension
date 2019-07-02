//
//  UIImage+WXOriginal.m
//  WXCategories
//
//  Created by 巴糖 on 2018/11/1.
//  Copyright © 2018 巴糖. All rights reserved.
//

#import "UIImage+WXOriginal.h"

@implementation UIImage (WXOriginal)

- (UIImage *)wx_renderingModeAlwaysOriginal
{
    return [self imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
#pragma mark - 构造函数
+ (instancetype)wx_imageWithOriginalName:(NSString *)imageName
{
    return [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
