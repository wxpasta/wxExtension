//
//  VMPDownloadManager.h
//  vmp
//
//  Created by magic-devel on 2020/9/22.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^VMPCompletion) (BOOL state, NSString * _Nullable message,  NSString * _Nullable filePath);

@interface VMPDownloadManager : NSObject

+ (instancetype)sharedDownloadManager;

- (void)downloadURL:(NSString *)urlString downloadCompletion:(VMPCompletion)completion;



@end

NS_ASSUME_NONNULL_END
