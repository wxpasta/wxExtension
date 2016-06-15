//
//  UIViewController+WX.m
//  VRMAX
//
//  Created by AngieMita on 16/6/6.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "UIViewController+WX.h"

@implementation UIViewController (WX)

-(CGFloat)wx_screenWidth
{
    return [UIScreen mainScreen].bounds.size.width;
}
-(CGFloat)wx_screenHeight
{
    return [UIScreen mainScreen].bounds.size.height;
}

- (instancetype)wx_nibLastObjectWithClass:(Class)coustomClass
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([coustomClass class]) owner:nil options:nil] lastObject];
}

- (instancetype)wx_nibLastObjectWithNibName:(NSString *)nibName
{
    return [[[NSBundle mainBundle] loadNibNamed:nibName owner:nil options:nil] lastObject];
}

+ (instancetype)wx_viewControllerWithNibNameWithClass:(Class)coustomClass
{
    return [[coustomClass alloc] initWithNibName:NSStringFromClass([coustomClass class]) bundle:nil];
}
@end
