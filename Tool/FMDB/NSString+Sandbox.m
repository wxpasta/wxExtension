//
//  NSString+Sandbox.m
//  X8.2O
//
//  Created by 巴糖 on 2016/12/20.
//  Copyright © 2016年 巴糖. All rights reserved.
//

#import "NSString+Sandbox.h"

@implementation NSString (Sandbox)

/** 将当前字符串拼接到Documents目录后面 **/
- (NSString *)wx_documentsDir
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [[paths objectAtIndex:0] stringByAppendingPathComponent:self];
}

/** 将当前字符串拼接到Library/Caches目录后面 **/
- (NSString *)wx_cachesDir
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    return [[paths objectAtIndex:0] stringByAppendingPathComponent:self];
}

/** 将当前字符串拼接到tmp目录后面 **/
- (NSString *)wx_tmpDir
{
    return [NSTemporaryDirectory() stringByAppendingPathComponent:self];
}

@end
