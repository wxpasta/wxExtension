//
//  UIView+WXNIb.m
//  WXCategories
//
//  Created by 巴糖 on 2018/11/16.
//  Copyright © 2018 巴糖. All rights reserved.
//

#import "UIView+WXNIb.h"

@implementation UIView (WXNIb)

#pragma mark - NSBundle
- (nullable instancetype)wx_loadNibFirstObject {
    NSString *name = NSStringFromClass([self class]);
    return [[NSBundle mainBundle] loadNibNamed:name owner:nil options:nil].firstObject;
}

- (nullable instancetype)wx_loadNiblastObject {
    NSString *name = NSStringFromClass([self class]);
    return [[NSBundle mainBundle] loadNibNamed:name owner:nil options:nil].lastObject;
}

- (nullable NSArray *)wx_loadNibObject {
    NSString *name = NSStringFromClass([self class]);
    return [[NSBundle mainBundle] loadNibNamed:name owner:nil options:nil];
}

@end
