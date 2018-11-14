//
//  UIView+Constructor.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/10/20.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "UIView+Constructor.h"

@implementation UIView (Constructor)

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
