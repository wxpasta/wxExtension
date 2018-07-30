//
//  ZipArchive+AM.h
//  ustar
//
//  Created by imac on 2016/10/10.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

#import <ZipArchive/ZipArchive.h>

@interface ZipArchive (AM)

/**
 *  根据路径将文件压缩为zip到指定路径
 *
 *  @param sourcePath 压缩文件夹路径
 *  @param destZipFile 存放路径（保存重命名）
 */
+ (void) doZipAtPath:(NSString*)sourcePath to:(NSString*)destZipFile;
@end
