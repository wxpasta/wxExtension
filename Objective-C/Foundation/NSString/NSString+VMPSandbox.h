//
//  NSString+VMPSandbox.h
//  vmp
//
//  Created by magic-devel on 2020/9/28.
//  Copyright © 2020 magic-devel. All rights reserved.
//

@import Foundation;

@interface NSString (VMPSandbox)

/** 将当前字符串拼接到Documents目录后面 **/
- (NSString *)customDocumentsPath;

/** 将当前字符串拼接到Library目录后面 **/
- (NSString *)customLibraryPath;

/** 将当前字符串拼接到Library/Caches目录后面 **/
- (NSString *)customCachesPath;

/** 将当前字符串拼接到tmp目录后面 **/
- (NSString *)customTmpPath;

@end
