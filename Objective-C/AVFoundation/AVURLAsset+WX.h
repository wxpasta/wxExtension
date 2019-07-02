//
//  AVURLAsset+WX.h
//  ustar
//
//  Created by imac on 2016/10/10.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

@import AVFoundation;

@interface AVURLAsset (WX)

+ (nullable instancetype)wx_URLAssetWithFilePath:(nonnull NSString *)firePath options:(nullable NSDictionary<NSString *, id> *)options;

- (Float64)wx_seconds;

@end
