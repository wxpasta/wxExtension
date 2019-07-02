//
//  AVAudioPlayer+WX.h
//  WXCategories
//
//  Created by 巴糖 on 2016/10/9.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import AVFoundation;

NS_ASSUME_NONNULL_BEGIN

@interface AVAudioPlayer (WX)

- (nullable instancetype)wx_initWithFilePath:(NSString *)firePath
                                       error:(NSError **)outError;

+ (nullable instancetype)wx_AudioPlayerWithFilePath:(NSString *)firePath
                                              error:(NSError **)outError;

@end

NS_ASSUME_NONNULL_END
