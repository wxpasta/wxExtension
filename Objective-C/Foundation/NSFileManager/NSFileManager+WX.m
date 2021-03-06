#import "NSFileManager+WX.h"

@implementation NSFileManager (WX)

+ (BOOL)wx_createDirectory:(NSString *)directory AtPath:(NSString *)path
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *directorypath = [path stringByAppendingPathComponent:directory];
    return [fileManager createDirectoryAtPath:directorypath withIntermediateDirectories:YES attributes:nil error:nil];
}

+ (BOOL)wx_createFile:(NSString *)file AtPath:(NSString *)path {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *iOSPath = [path stringByAppendingPathComponent:file];
    
    if (![fileManager fileExistsAtPath:iOSPath]) {
        return [fileManager createFileAtPath:iOSPath contents:nil attributes:nil];
    } else {
        return NO;
    }
}

//创建目录 在Documents
+ (BOOL)wx_createDirectoryToDocuments:(NSString *)directory
{
    NSString *documentsPath = wx_getDocumentsPath();
    return [NSFileManager wx_createDirectory:directory AtPath:documentsPath];
}

//创建文件 在Documents
+ (BOOL)wx_createFileToDocuments:(NSString *)file
{
    NSString *documentsPath = wx_getDocumentsPath();
    return [NSFileManager wx_createFile:file AtPath:documentsPath];
}

//创建目录 在Caches
+ (BOOL)wx_createDirectoryToCaches:(NSString *)directory
{
    NSString *path = wx_getCachesPath();
    return [NSFileManager wx_createDirectory:directory AtPath:path];
}

//创建文件 在Caches
+ (BOOL)wx_createFileToCaches:(NSString *)folder
{
    NSString *path = wx_getCachesPath();
    return [NSFileManager wx_createFile:folder AtPath:path];
}

//写文件 在Documents
+ (BOOL)writeFile:(NSString *)file
{
    NSString *documentsPath = wx_getDocumentsPath();
    NSString *iOSPath = [documentsPath stringByAppendingPathComponent:file];
    NSString *content = @"我要写数据啦";
    return [content writeToFile:iOSPath atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

//读取文件内容 在Documents
-(void)readFileContent:(NSString *)file
{
    NSString *documentsPath = wx_getDocumentsPath();
    NSString *iOSPath = [documentsPath stringByAppendingPathComponent:file];
    NSString *content = [NSString stringWithContentsOfFile:iOSPath encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"read success: %@",content);
}

//判断文件是否存在
+ (BOOL)isSxistAtPath:(NSString *)filePath isDirectory:(nullable BOOL *)isDirectory
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL exist = [fileManager fileExistsAtPath:filePath isDirectory:isDirectory];
    return exist;
}

//计算文件大小
- (unsigned long long)wx_fileSizeAtPath:(NSString *)filePath
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL isExist = [fileManager fileExistsAtPath:filePath];
    if (isExist){
        unsigned long long fileSize = [[fileManager attributesOfItemAtPath:filePath error:nil] fileSize];
        return fileSize;
    } else {
        return 0;
    }
}

//计算整个文件夹中所有文件大小
- (unsigned long long)folderSizeAtPath:(NSString*)folderPath
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL isExist = [fileManager fileExistsAtPath:folderPath];
    if (isExist){
        NSEnumerator *childFileEnumerator = [[fileManager subpathsAtPath:folderPath] objectEnumerator];
        unsigned long long folderSize = 0;
        NSString *fileName = @"";
        while ((fileName = [childFileEnumerator nextObject]) != nil){
            NSString* fileAbsolutePath = [folderPath stringByAppendingPathComponent:fileName];
            folderSize += [self wx_fileSizeAtPath:fileAbsolutePath];
        }
        return folderSize / (1024.0 * 1024.0);
    } else {
        return 0;
    }
}

//删除文件 在Documents
+ (BOOL)deleteFile:(NSString *)file
{
    NSString *documentsPath = wx_getDocumentsPath();
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *iOSPath = [documentsPath stringByAppendingPathComponent:file];
    return [fileManager removeItemAtPath:iOSPath error:nil];
}

//移动文件 在Documents
+ (BOOL)moveFileName:(NSString *)sourceFile Tofile:(NSString *)tofile
{
    NSString *documentsPath = wx_getDocumentsPath();
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *filePath = [documentsPath stringByAppendingPathComponent:sourceFile];
    NSString *moveToPath = [documentsPath stringByAppendingPathComponent:tofile];
    return [fileManager moveItemAtPath:filePath toPath:moveToPath error:nil];
}

//重命名 在Documents
+ (BOOL)renameFileName:(NSString *)sourceFile renamefile:(NSString *)renamefile
{
    //通过移动该文件对文件重命名
    NSString *documentsPath = wx_getDocumentsPath();
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *filePath = [documentsPath stringByAppendingPathComponent:sourceFile];
    NSString *moveToPath = [documentsPath stringByAppendingPathComponent:renamefile];
    return [fileManager moveItemAtPath:filePath toPath:moveToPath error:nil];
}

//获取沙盒根目录
FOUNDATION_EXPORT NSString *wx_getDirectoryPath(void)
{
    return NSHomeDirectory();
}

//获取Documents路径
FOUNDATION_EXPORT NSString *wx_getDocumentsPath(void)
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}

//获取Library路径
FOUNDATION_EXPORT NSString *wx_getLibraryPath(void)
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}

//获取Caches路径
FOUNDATION_EXPORT NSString *wx_getCachesPath(void)
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}

//获取tmp路径
FOUNDATION_EXPORT NSString *wx_getTemporaryDirectoryPath(void)
{
    return NSTemporaryDirectory();
}



@end
