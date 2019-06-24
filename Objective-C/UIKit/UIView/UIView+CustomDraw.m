//
//  UIView+CustomDraw.m
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/24.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "UIView+CustomDraw.h"

@implementation UIView (CustomDraw)

- (UIView *)drawLineWithFrame:(CGRect)frame
                        color:(UIColor*)color
                 autoSizeMask:(UIViewAutoresizing)mask {
    UIView *line = [[UIView alloc]initWithFrame:frame];
    line.backgroundColor = color;
    line.autoresizingMask = mask;
    line.tag = 1919;
    
    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (obj.tag == 1919 && [NSStringFromCGRect(obj.frame) isEqualToString:NSStringFromCGRect(line.frame)]) {
            [obj removeFromSuperview];
        }
    }];
    [self addSubview:line];
    
    return line;
}

@end
