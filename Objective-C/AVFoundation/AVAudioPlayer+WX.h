//
//  AVAudioPlayer+WX.h
//  ustar
//
//  Created by imac on 2016/10/9.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

@interface AVAudioPlayer (WX)

- (nullable instancetype)wx_initWithFilePath:(nonnull NSString *)firePath error:( NSError * _Nullable *_Nullable)outError;

+ (nullable instancetype)wx_AudioPlayerWithFilePath:(nonnull NSString *)firePath error:(NSError * _Nullable *_Nullable)outError;





@end
