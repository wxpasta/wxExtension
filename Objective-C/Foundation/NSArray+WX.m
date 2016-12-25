//
//  NSArray+WX.m
//  VRMAX
//
//  Created by AngieMita on 16/7/10.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "NSArray+WX.h"
#import "NSBundle+WX.h"

@implementation NSArray (WX)

+ (nullable NSArray *)wx_arrayWithPathForResource:(nullable NSString *)name
{
    return [NSArray wx_arrayWithPathForResource:name ofType:nil];
}

+ (nullable NSArray *)wx_arrayWithPathForResource:(nullable NSString *)name ofType:(nullable NSString *)ext
{
    NSString *filePath = [NSBundle wx_pathForResource:name ofType:ext];
    return [NSArray arrayWithContentsOfFile:filePath];
}

+ (nullable instancetype)wx_arrayLastObjectWithLoadNibNamed:(nonnull NSString *)nibName
{
    return [[[NSBundle mainBundle] wx_loadNibNamed:nibName] lastObject];
}

+ (nullable instancetype)wx_arrayLastObjectWithLoadNibNamedClass:(nonnull Class)coustomClass
{
    return [[NSBundle mainBundle] wx_loadNibClassNamed:[coustomClass class]].lastObject;
}

+ (nullable instancetype)wx_arrayFirstObjectWithLoadNibNamed:(nonnull NSString *)nibName
{
    return [[NSBundle mainBundle] wx_loadNibNamed:nibName].firstObject;
}

+ (nullable instancetype)wx_arrayFirstObjectWithLoadNibNamedClass:(nonnull Class)coustomClass
{
    return [[NSBundle mainBundle] wx_loadNibClassNamed:[coustomClass class]].firstObject;
}


@end
