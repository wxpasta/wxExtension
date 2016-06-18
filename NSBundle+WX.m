//
//  NSBundle+WX.m
//  01-项目中的常见文件(掌握)
//
//  Created by AngieMita on 16/6/18.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "NSBundle+WX.h"

@implementation NSBundle (WX)

+ (nullable NSString *)wx_pathForResource:(nullable NSString *)name
{
    return [[NSBundle mainBundle] pathForResource:name ofType:nil];
}

+ (nullable NSDictionary *)wx_dictionaryWithPathForResource:(nullable NSString *)name
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:name ofType:nil];
    return [NSDictionary dictionaryWithContentsOfFile:filePath];
}


+ (nullable NSString *)wx_infoDictionary:(nullable NSString *)key
{
    return [NSBundle mainBundle].infoDictionary[key];
}

+ (nullable NSString *)wx_infoPlistForKey:(nullable NSString *)key
{
    return [NSBundle mainBundle].infoDictionary[key];
}
@end
