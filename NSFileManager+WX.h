//
//  NSFileManager+WX.h
//  VRMAX
//
//  Created by AngieMita on 16/6/14.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (WX)

/**
 *  计算文件大小
 *
 *  @param filePath 路径
 *
 *  @return
 */
- (unsigned long long)fileSizeAtPath:(NSString *)filePath;

@end
