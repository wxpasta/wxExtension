//
//  AVURLAsset+FilePath.m
//  WXCategories
//
//  Created by 巴糖 on 2016/10/10.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "AVURLAsset+FilePath.h"

@implementation AVURLAsset (FilePath)

+ (instancetype)URLAssetWithFilePath:(nonnull NSString *)filePath
                             options:(nullable NSDictionary<NSString *, id> *)options {
    NSURL *url = [[NSURL alloc] initFileURLWithPath:filePath];
    return [AVURLAsset URLAssetWithURL:url options:nil];
}

- (Float64)wx_seconds
{
    return CMTimeGetSeconds(self.duration);
}




@end
