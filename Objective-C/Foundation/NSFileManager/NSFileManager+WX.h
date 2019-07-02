@import Foundation;

@interface NSFileManager (WX)

/**
 *  计算文件大小
 *  @param filePath 路径
 *  @return 大小
 */
- (unsigned long long)wx_fileSizeAtPath:(NSString *)filePath;

/**  获取沙盒根目录  */
FOUNDATION_EXPORT NSString *wx_getDirectoryPath(void);

/**  获取Documents路径  **/
FOUNDATION_EXPORT NSString *wx_getDocumentsPath(void);

/**  获取Library路径  **/
FOUNDATION_EXPORT NSString *wx_getLibraryPath(void);

/**  获取Caches路径  **/
FOUNDATION_EXPORT NSString *wx_getCachesPath(void);

/**  获取tmp路径 **/
FOUNDATION_EXPORT NSString *wx_getTemPath(void);


/**
 *
 *
 @param directory 目录名
 @param path          存在哪里

 @return 是否创建成功
 */
+ (BOOL)wx_createDirectory:(NSString *)directory AtPath:(NSString *)path;

/**
 *  在Caches创建目录
 *
 @param directory 目录名

 @return 是否创建成功
 */
+ (BOOL)wx_createDirectoryToCaches:(NSString *)directory;


/**
 创建文件

 @param file 文件名(包括扩展名)
 @param path 存在哪里

 @return 是否创建成功
 */
+ (BOOL)wx_createFile:(NSString *)file AtPath:(NSString *)path;

@end
