//
//  CALayer+WX.m
//  xcode8New
//
//  Created by AngieMita on 16/6/22.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

#import "CALayer+WX.h"

@implementation CALayer (WX)

- (void)setWx_cornerRadius:(CGFloat)wx_cornerRadius
{
    self.cornerRadius = wx_cornerRadius; //设置图片圆角的尺度
    self.masksToBounds = YES; //没这句话它圆不起来
}

- (CGFloat)wx_cornerRadius
{
    return self.cornerRadius;
}

@end
