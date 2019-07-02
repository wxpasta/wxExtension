//
//  UIButton+FPTitle.m
//  XYAPPTest
//
//  Created by 巴糖 on 2019/1/18.
//  Copyright © 2019 巴糖. All rights reserved.
//

#import "UIButton+FPTitle.h"

@implementation UIButton (FPTitle)

- (UIButton *(^)(NSString *))setAllTitle{
    return ^(NSString *title){
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitle:title forState:UIControlStateHighlighted];
        [self setTitle:title forState:UIControlStateDisabled];
        [self setTitle:title forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton *(^)(NSString *))setDisabledTitle{
    return ^(NSString *title){
        [self setTitle:title forState:UIControlStateDisabled];
        return self;
    };
}
- (UIButton *(^)(NSString *))setHighlightedTitle{
    return ^(NSString *title){
        [self setTitle:title forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(NSString *))setNormalTitle{
    return ^(NSString *title){
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(NSString *))setSelectedTitle{
    return ^(NSString *title){
        [self setTitle:title forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton *(^)(NSString *,UIControlState))setTitle{
    return ^(NSString *title,UIControlState state){
        [self setTitle:title forState:state];
        return self;
    };
}

- (NSString *(^)(UIControlState))title{
    return ^(UIControlState state){
        return [self titleForState:state];
    };
}
@end
