//
//  UIColor+CustomTest.m
//  TestAPP
//
//  Created by magic-devel on 2020/9/11.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import "UIColor+CustomTest.h"

@implementation UIColor (CustomTest)

+ (UIColor *)randomTestColor
{
    CGFloat red = arc4random_uniform(255)/255.0;
    CGFloat green = arc4random_uniform(255)/255.0;
    CGFloat blue = arc4random_uniform(255)/255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1];
}

@end
