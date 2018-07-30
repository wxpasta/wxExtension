//
//  UIView+Nib.m
//  BJCategory
//
//  Created by AngieMita on 2018/7/29.
//  Copyright © 2018年 AngieMita. All rights reserved.
//

#import "UIView+Nib.h"

@implementation UIView (Nib)

- (id _Nullable)wx_loadNibFirstObject
{
    NSString *name = NSStringFromClass([self class]);
    return [[NSBundle mainBundle] loadNibNamed:name owner:nil options:nil].firstObject;
}

- (id _Nullable)wx_loadNiblastObject
{
    NSString *name = NSStringFromClass([self class]);
    return [[NSBundle mainBundle] loadNibNamed:name owner:nil options:nil].lastObject;
}

- (nullable NSArray *)wx_loadNibObject
{
    NSString *name = NSStringFromClass([self class]);
    return [[NSBundle mainBundle] loadNibNamed:name owner:nil options:nil];
}

@end
