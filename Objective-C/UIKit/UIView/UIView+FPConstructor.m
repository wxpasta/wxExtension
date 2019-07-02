//
//  UIView+FPConstructor.m
//  WXCategories
//
//  Created by 许宝吉 on 2018/10/20.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "UIView+FPConstructor.h"

@implementation UIView (FPConstructor)

+ (instancetype (^)(void))ffl_init{
    return ^(){
        return [[[self class] alloc] init];
    };
}



+ (instancetype (^)(CGFloat x,CGFloat y, CGFloat dx,CGFloat dy))ffl_initFrame{
    return ^(CGFloat x,CGFloat y, CGFloat dx,CGFloat dy){
        return [[[self class] alloc]initWithFrame:CGRectMake(x, y, dx, dy)];
    };
}
@end
