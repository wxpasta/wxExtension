//
//  UIScreen+FPBounds.m
//  WXCategories
//
//  Created by 巴糖 on 2018/11/16.
//  Copyright © 2018 巴糖. All rights reserved.
//

#import "UIScreen+FPBounds.h"

@implementation UIScreen (FPBounds)


+ (CGFloat (^)(void))ffl_width{
    return ^(void){
        return [UIScreen mainScreen].bounds.size.width;
    };
}

+ (CGFloat (^)(void))ffl_height{
    return ^(void){
        return [UIScreen mainScreen].bounds.size.height;
    };
}

+ (CGFloat (^)(void))ffl_scale{
    return ^(void){
        return [UIScreen mainScreen].scale;
    };
}

+ (CGSize (^)(void))ffl_size{
    return ^(void){
        return [UIScreen mainScreen].bounds.size;
    };
}

@end
