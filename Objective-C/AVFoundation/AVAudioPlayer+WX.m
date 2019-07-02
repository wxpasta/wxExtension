//
//  AVAudioPlayer+WX.m
//  WXCategories
//
//  Created by 巴糖 on 2016/10/9.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "AVAudioPlayer+WX.h"

@implementation AVAudioPlayer (WX)

- (nullable instancetype)wx_initWithFilePath:(NSString *)firePath
                                       error:(NSError * __autoreleasing *)outError {
    NSURL *url = [[NSURL alloc] initFileURLWithPath:firePath];
    return [self initWithContentsOfURL:url error:outError];
}


+ (nullable instancetype)wx_AudioPlayerWithFilePath:(NSString *)firePath
                                              error:(NSError * __autoreleasing *)outError {
    return [[AVAudioPlayer alloc]wx_initWithFilePath:firePath error:outError];
}

@end
