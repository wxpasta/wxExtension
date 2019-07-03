//
//  AVAudioPlayer+FilePath.m
//  WXCategories
//
//  Created by 巴糖 on 2016/10/9.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "AVAudioPlayer+FilePath.h"

@implementation AVAudioPlayer (FilePath)

- (nullable instancetype)initWithFilePath:(NSString *)filePath
                                    error:(NSError * __autoreleasing *)outError {
    NSURL *url = [[NSURL alloc] initFileURLWithPath:filePath];
    return [self initWithContentsOfURL:url error:outError];
}

+ (nullable instancetype)audioPlayerWithFilePath:(NSString *)firePath
                                           error:(NSError * __autoreleasing *)outError {
    return [[AVAudioPlayer alloc] initWithFilePath:firePath error:outError];
}

@end
