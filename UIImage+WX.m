//
//  UIImage+WX.m
//  VRMAX
//
//  Created by AngieMita on 16/6/10.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "UIImage+WX.h"

@implementation UIImage (WX)

+ (UIImage *)wx_imageRenderingModeAlwaysOriginalWithImageName:(NSString *)imageName
{
    return [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}


@end
