//
//  AVURLAsset+FilePath.h
//  WXCategories
//
//  Created by 巴糖 on 2016/10/10.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import AVFoundation;

NS_ASSUME_NONNULL_BEGIN

@interface AVURLAsset (FilePath)

+ (nullable instancetype)URLAssetWithFilePath:(nonnull NSString *)firePath
                                      options:(nullable NSDictionary<NSString *, id> *)options;

- (Float64)wx_seconds;

@end

NS_ASSUME_NONNULL_END
