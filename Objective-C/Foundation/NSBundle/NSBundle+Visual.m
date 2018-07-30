//
//  NSBundle+Visual.m
//  BJCategory
//
//  Created by AngieMita on 2018/7/29.
//  Copyright © 2018年 AngieMita. All rights reserved.
//

#import "NSBundle+Visual.h"

@implementation NSBundle (Visual)

+ (nullable NSArray *)wx_bundleLoadNibNamed:(NSString *)name{
    return [[NSBundle mainBundle] loadNibNamed:name owner:nil options:nil];
}

+ (id _Nullable)wx_bundleLoadNibFirstNamed:(NSString *)name{
    return [[NSBundle mainBundle] loadNibNamed:name owner:nil options:nil].firstObject;
}

+ (id _Nullable)wx_bundleLoadNibLastNamed:(NSString *)name{
    return [[NSBundle mainBundle] loadNibNamed:name owner:nil options:nil].lastObject;
}

@end
