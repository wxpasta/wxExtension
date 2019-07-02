//
//  UIImage+FPOriginal.m
//  WXCategories
//
//  Created by 许宝吉 on 2018/11/1.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "UIImage+FPOriginal.h"

@implementation UIImage (FPOriginal)

- (UIImage *(^)(void))ffl_renderingModeAlwaysOriginal{
    return ^(){
        return [self imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    };
}

+ (UIImage *(^)(NSString *))ffl_original{
    return ^(NSString *imageName){
        return [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    };
}

@end
