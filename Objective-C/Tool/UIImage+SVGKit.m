//
//  UIImage+SVGKit.m
//  weixin
//
//  Created by 许宝吉 on 2018/12/27.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "UIImage+SVGKit.h"
#import "SVGKit.h"

@implementation UIImage (SVGKit)

+ (UIImage *)SVGKImageNamed:(NSString *)name
{
    return [SVGKImage imageNamed:name].UIImage;
}

@end
