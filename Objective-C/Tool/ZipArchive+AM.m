//
//  ZipArchive+AM.m
//  ustar
//
//  Created by imac on 2016/10/10.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

#import "ZipArchive+AM.h"

@implementation ZipArchive (AM)

/**
 *  根据路径将文件压缩为zip到指定路径
 *
 *  @param sourcePath 压缩文件夹路径
 *  @param destZipFile 存放路径（保存重命名）
 */

+ (void) doZipAtPath:(NSString*)sourcePath to:(NSString*)destZipFile
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    ZipArchive * zipArchive = [ZipArchive new];
    BOOL isdic;
    //判断sourcePath下是文件夹还是文件
    if(![fileManager fileExistsAtPath:sourcePath isDirectory:&isdic])
        return;//文件已存在，直接返回
    
    [zipArchive CreateZipFile2:destZipFile];
    
    if (isdic)//文件夹
    {
        NSArray *fileList = [fileManager contentsOfDirectoryAtPath:sourcePath error:nil];//文件列表
        for(NSString *filePath in fileList){
            NSString *fileName = [filePath lastPathComponent];//取得文件名
//            NSString *path = [sourcePath stringByAppendingString:[NSString stringWithFormat:@"/%@",filePath]];
//            [zipArchive addFileToZip:path newname:fileName];
            [zipArchive addFileToZip:filePath newname:fileName];
        }
    }
    else
    {
        [zipArchive addFileToZip:sourcePath newname:[sourcePath lastPathComponent]];
    }
    [zipArchive CloseZipFile2];
    BOOL success = [zipArchive CloseZipFile2];
    NSLog(@"Zipped file with result %d",success);
}
    
    //其实关键的API就3个，createZipFile2, addFileToZip, closeZipFile2 代码很简单，基本是自注释的，就不多解释了。只是要注意，addFileToZip方法的接受的参数是NSString*，所以如果要压缩整个目录（包括子目录下的所有文件），可以遍历此文件夹，也就是上面的contentsOfDirectoryAtPath方法
@end
