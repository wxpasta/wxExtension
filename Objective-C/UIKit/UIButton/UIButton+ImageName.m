//
//  UIButton+ImageName.m
//  UIButtonTest
//
//  Created by 巴糖 on 2017/8/23.
//  Copyright © 2019年 crazyit.org. All rights reserved.
//

#import "UIButton+ImageName.h"


@implementation UIButton (ImageName)

- (void)setImageNameForNormal:(NSString *)imageName {
    [self setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
}

- (void)setImageNameForHightlighted:(NSString *)imageName {
    [self setImage:[UIImage imageNamed:imageName] forState:UIControlStateHighlighted];
}

- (void)setImageNameForDisabled:(NSString *)imageName {
    [self setImage:[UIImage imageNamed:imageName] forState:UIControlStateSelected];
}

- (void)setImageNameForSelected:(NSString *)imageName {
    [self setImage:[UIImage imageNamed:imageName] forState:UIControlStateDisabled];
}




@end
