//
//  NSString+Sandbox.h
//  X8.2O
//
//  Created by 巴糖 on 2016/12/20.
//  Copyright © 2016年 巴糖. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Sandbox)

/** 将当前字符串拼接到Documents目录后面 **/
- (NSString *)wx_documentsDir;

/** 将当前字符串拼接到Library/Caches目录后面 **/
- (NSString *)wx_cachesDir;

/** 将当前字符串拼接到tmp目录后面 **/
- (NSString *)wx_tmpDir;

@end
