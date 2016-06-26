#import "NSFileManager+WX.h"

@implementation NSFileManager (WX)

+ (BOOL)wx_createfolder:(NSString *)folder path:(NSString *)path
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *iOSDirectory = [path stringByAppendingPathComponent:folder];
    return [fileManager createDirectoryAtPath:iOSDirectory withIntermediateDirectories:YES attributes:nil error:nil];
}

+ (BOOL)wx_createFile:(NSString *)file path:(NSString *)path
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *iOSPath = [path stringByAppendingPathComponent:file];
    return [fileManager createFileAtPath:iOSPath contents:nil attributes:nil];
}

//创建文件夹
- (BOOL)wx_createFolderToDocuments:(NSString *)folder
{
    NSString *documentsPath =[self wx_getDocumentsPath];
    return [NSFileManager wx_createfolder:folder path:documentsPath];
}

//创建文件
- (BOOL)wx_createFileToDocuments:(NSString *)file
{
    NSString *documentsPath =[self wx_getDocumentsPath];
    return [NSFileManager wx_createFile:file path:documentsPath];
}

//写文件
-(void)writeFile
{
    NSString *documentsPath =[self wx_getDocumentsPath];
    NSString *iOSPath = [documentsPath stringByAppendingPathComponent:@"iOS.txt"];
    NSString *content = @"我要写数据啦";
    BOOL isSuccess = [content writeToFile:iOSPath atomically:YES encoding:NSUTF8StringEncoding error:nil];
    if (isSuccess) {
        NSLog(@"write success");
    } else {
        NSLog(@"write fail");
    }
}

//读取文件内容
-(void)readFileContent
{
    NSString *documentsPath =[self wx_getDocumentsPath];
    NSString *iOSPath = [documentsPath stringByAppendingPathComponent:@"iOS.txt"];
    NSString *content = [NSString stringWithContentsOfFile:iOSPath encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"read success: %@",content);
}

//判断文件是否存在
- (BOOL)isSxistAtPath:(NSString *)filePath
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL isExist = [fileManager fileExistsAtPath:filePath];
    return isExist;
}

//计算文件大小
- (unsigned long long)fileSizeAtPath:(NSString *)filePath
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL isExist = [fileManager fileExistsAtPath:filePath];
    if (isExist){
        unsigned long long fileSize = [[fileManager attributesOfItemAtPath:filePath error:nil] fileSize];
        return fileSize;
    } else {
        NSLog(@"file is not exist");
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
            folderSize += [self fileSizeAtPath:fileAbsolutePath];
        }
        return folderSize / (1024.0 * 1024.0);
    } else {
        NSLog(@"file is not exist");
        return 0;
    }
}

//删除文件
-(void)deleteFile
{
    NSString *documentsPath =[self wx_getDocumentsPath];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *iOSPath = [documentsPath stringByAppendingPathComponent:@"iOS.txt"];
    BOOL isSuccess = [fileManager removeItemAtPath:iOSPath error:nil];
    if (isSuccess) {
        NSLog(@"delete success");
    }else{
        NSLog(@"delete fail");
    }
}

//移动文件
- (void)moveFileName
{
    NSString *documentsPath =[self wx_getDocumentsPath];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *filePath = [documentsPath stringByAppendingPathComponent:@"iOS.txt"];
    NSString *moveToPath = [documentsPath stringByAppendingPathComponent:@"iOS.txt"];
    BOOL isSuccess = [fileManager moveItemAtPath:filePath toPath:moveToPath error:nil];
    if (isSuccess) {
        NSLog(@"rename success");
    }else{
        NSLog(@"rename fail");
    }
}

//重命名
- (void)renameFileName
{
    //通过移动该文件对文件重命名
    NSString *documentsPath =[self wx_getDocumentsPath];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *filePath = [documentsPath stringByAppendingPathComponent:@"iOS.txt"];
    NSString *moveToPath = [documentsPath stringByAppendingPathComponent:@"rename.txt"];
    BOOL isSuccess = [fileManager moveItemAtPath:filePath toPath:moveToPath error:nil];
    if (isSuccess) {
        NSLog(@"rename success");
    }else{
        NSLog(@"rename fail");
    }
}

//获取沙盒根目录
- (NSString *)wx_getDirectoryPath
{
    return NSHomeDirectory();
}

//获取Documents路径
- (NSString *)wx_getDocumentsPath
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}

//获取Library路径
- (NSString *)wx_getLibraryPath
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}

//获取Caches路径
- (NSString *)wx_getCachesPath
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}

//获取tmp路径
- (NSString *)wx_getTemporaryDirectoryPath
{
    return NSTemporaryDirectory();
}



@end
