//
//  NSDictionary+WX.m
//  VRMAX
//
//  Created by AngieMita on 16/7/10.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "NSDictionary+WX.h"
#import "NSBundle+WX.h"

@implementation NSDictionary (WX)

+ (nullable NSDictionary *)wx_dictionaryWithPathForResource:(nullable NSString *)name
{
    return [NSDictionary wx_dictionaryWithPathForResource:name ofType:nil];
}

+ (nullable NSDictionary *)wx_dictionaryWithPathForResource:(nullable NSString *)name  ofType:(nullable NSString *)ext
{
    NSString *filePath = [NSBundle wx_pathForResource:name ofType:ext];
    return [NSDictionary dictionaryWithContentsOfFile:filePath];
}




@end
