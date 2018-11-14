//
//  NSString+FPSandBox.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/11/14.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "NSString+FPSandBox.h"

@implementation NSString (FPSandBox)

// 获取沙盒根路径
+ (NSString *(^)(void))ffl_getHomePath{
    return ^(void){
        return NSHomeDirectory();
    };
}

// 获取tmp路径
+ (NSString *(^)(void))ffl_getTmpPath{
    return ^(void){
        return NSTemporaryDirectory();
    };
}

// 获取Documents路径
+ (NSString *(^)(void))ffl_getDocumentsPath{
    return ^(void){
        NSArray *pathArr = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *path = [pathArr firstObject];
        return path;
        };
}

// 获取Library路径
+ (NSString *(^)(void))ffl_getLibraryPath{
    return ^(void){
        NSArray *pathArr = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
        NSString *path = [pathArr firstObject];
        return path;
    };
}

// 获取LibraryCache路径
+ (NSString *(^)(void))ffl_getCachePath{
    return ^(void){
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
        NSString *path = [paths firstObject];
        return path;
    };
}
@end
