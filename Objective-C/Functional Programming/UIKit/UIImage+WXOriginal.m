//
//  UIImage+WXOriginal.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/11/1.
//  Copyright © 2018 许宝吉. All rights reserved.
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
