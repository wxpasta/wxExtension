//
//  AVAudioPlayer+FilePath.hF
//  WXCategories
//
//  Created by 巴糖 on 2016/10/9.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import AVFoundation;

NS_ASSUME_NONNULL_BEGIN

@interface AVAudioPlayer (FilePath)

- (nullable instancetype)initWithFilePath:(NSString *)firePath
                                    error:(NSError **)outError;

+ (nullable instancetype)audioPlayerWithFilePath:(NSString *)firePath
                                           error:(NSError **)outError;

@end

NS_ASSUME_NONNULL_END
