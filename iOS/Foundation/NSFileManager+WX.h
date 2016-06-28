#import <Foundation/Foundation.h>

@interface NSFileManager (WX)

/**
 *  计算文件大小
 *
 *  @param filePath 路径
 *
 *  @return
 */
- (unsigned long long)wx_fileSizeAtPath:(NSString *)filePath;





//获取沙盒根目录

/**
 *  获取沙盒根目录
 *
 *  @return
 */
FOUNDATION_EXPORT NSString *wx_getDirectoryPath(void);

/**
 *  获取Documents路径
 *
 *  @return
 */
FOUNDATION_EXPORT NSString *wx_getDocumentsPath(void);


/**
 *  获取Library路径
 *
 *  @return
 */
FOUNDATION_EXPORT NSString *wx_getLibraryPath(void);

/**
 *  获取Caches路径

 *
 *  @return
 */
FOUNDATION_EXPORT NSString *wx_getCachesPath(void);


/**
 *  获取tmp路径
 *
 *  @return
 */
FOUNDATION_EXPORT NSString *wx_getTemporaryDirectoryPath(void);







@end
