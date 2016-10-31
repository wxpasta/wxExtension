//
//  AVURLAsset+WX.m
//  ustar
//
//  Created by imac on 2016/10/10.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

#import "AVURLAsset+WX.h"

@implementation AVURLAsset (WX)


+ (instancetype)wx_URLAssetWithFilePath:(nonnull NSString *)firePath options:(nullable NSDictionary<NSString *, id> *)options
{
    NSURL *url = [[NSURL alloc] initFileURLWithPath:firePath];
    return [AVURLAsset URLAssetWithURL:url options:nil];
}

- (Float64)wx_seconds
{
    return CMTimeGetSeconds(self.duration);
}




@end
