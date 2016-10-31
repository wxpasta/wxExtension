//
//  AVAudioPlayer+WX.m
//  ustar
//
//  Created by imac on 2016/10/9.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

#import "AVAudioPlayer+WX.h"

@implementation AVAudioPlayer (WX)

-(instancetype)wx_initWithFilePath:(NSString *)firePath error:(NSError *__autoreleasing *)outError
{
   NSURL *url = [[NSURL alloc] initFileURLWithPath:firePath];
   return [self initWithContentsOfURL:url error:outError];
}


+ (instancetype)wx_AudioPlayerWithFilePath:(NSString *)firePath error:(NSError *__autoreleasing *)outError
{
   return [[AVAudioPlayer alloc]wx_initWithFilePath:firePath error:outError];
}
@end
