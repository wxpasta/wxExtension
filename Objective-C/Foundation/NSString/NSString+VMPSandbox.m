//
//  NSString+VMPSandbox.m
//  vmp
//
//  Created by magic-devel on 2020/9/28.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import "NSString+VMPSandbox.h"

@implementation NSString (VMPSandbox)

/** 将当前字符串拼接到Documents目录后面 **/
- (NSString *)customDocumentsPath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [[paths objectAtIndex:0] stringByAppendingPathComponent:self];
}

/** 将当前字符串拼接到Library目录后面 **/
- (NSString *)customLibraryPath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    return [[paths objectAtIndex:0] stringByAppendingPathComponent:self];
}

/** 将当前字符串拼接到Library/Caches目录后面 **/
- (NSString *)customCachesPath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    return [[paths objectAtIndex:0] stringByAppendingPathComponent:self];
}

/** 将当前字符串拼接到tmp目录后面 **/
- (NSString *)customTmpPath {
    return [NSTemporaryDirectory() stringByAppendingPathComponent:self];
}

@end
