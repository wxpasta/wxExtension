//
//  NSFileManager+Constructor.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/11/14.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "NSFileManager+Constructor.h"

@implementation NSFileManager (Constructor)

// 检查文件、文件夹是否存在
+ (BOOL)fileExistsAtPath:(NSString *)path isDirectory:(BOOL *)isDir {
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL exist = [fileManager fileExistsAtPath:path isDirectory:isDir];
    return exist;
}

// 创建路径
+ (void)createDirectory:(NSString *)path {
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL isDir;
    BOOL exist = [fileManager fileExistsAtPath:path isDirectory:&isDir];
    if (!isDir) {
        [fileManager removeItemAtPath:path error:nil];
        exist = NO;
    }
    if (!exist) {
        // 注：直接创建不会覆盖原文件夹
        [fileManager createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
    }
}

// 创建文件
+ (NSString *)createFile:(NSString *)filePath fileName:(NSString *)fileName {
    
    // 先创建路径
    [self createDirectory:filePath];
    
    // 再创建路径上的文件
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *path = [filePath stringByAppendingPathComponent:fileName];
    BOOL isDir;
    BOOL exist = [fileManager fileExistsAtPath:path isDirectory:&isDir];
    if (isDir) {
        [fileManager removeItemAtPath:path error:nil];
        exist = NO;
    }
    if (!exist) {
        // 注：直接创建会被覆盖原文件
        [fileManager createFileAtPath:path contents:nil attributes:nil];
    }
    return path;
}

// 复制 文件or文件夹
+ (void)copyItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath {
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    BOOL result = [fileManager copyItemAtPath:srcPath toPath:dstPath error:&error];
    if (!result && error) {
        NSLog(@"copyItem Err : %@", error.description);
    }
}

// 移动 文件or文件夹
+ (void)moveItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath {
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    BOOL result = [fileManager moveItemAtPath:srcPath toPath:dstPath error:&error];
    if (!result && error) {
        NSLog(@"moveItem Err : %@", error.description);
    }
}

// 删除 文件or文件夹
+ (void)removeItemAtPath:(NSString *)path {
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    BOOL result = [fileManager removeItemAtPath:path error:&error];
    if (!result && error) {
        NSLog(@"removeItem Err : %@", error.description);
    }
}

// 获取目录下所有内容
+ (NSArray *)getContentsOfDirectoryAtPath:(NSString *)docPath {
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    NSArray *contentArr = [fileManager contentsOfDirectoryAtPath:docPath error:&error];
    if (!contentArr.count && error) {
        NSLog(@"ContentsOfDirectory Err : %@", error.description);
    }
    return contentArr;
}
@end
