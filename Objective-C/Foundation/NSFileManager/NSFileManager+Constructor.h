//
//  NSFileManager+Constructor.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/11/14.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSFileManager (Constructor)
// 检查文件、文件夹是否存在
+ (BOOL)fileExistsAtPath:(NSString *)path isDirectory:(BOOL *)isDir;

// 创建路径
+ (void)createDirectory:(NSString *)path;

// 创建文件
+ (NSString *)createFile:(NSString *)filePath fileName:(NSString *)fileName;

// 复制 文件or文件夹
+ (void)copyItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath;

// 移动 文件or文件夹
+ (void)moveItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath;

// 删除 文件or文件夹
+ (void)removeItemAtPath:(NSString *)path;

// 获取目录下所有内容
+ (NSArray *)getContentsOfDirectoryAtPath:(NSString *)docPath;

@end

NS_ASSUME_NONNULL_END
