//
//  CALayer+WX.h
//  WXCategories
//
//  Created by 巴糖 on 2018/5/20.
//  Copyright © 2019 巴糖. All rights reserved.
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
