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
