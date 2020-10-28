//
//  APPNetworkManager.h
//  vmp
//
//  Created by magic-devel on 2020/9/12.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>
#import "APPNetworkCallback.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger,APPRequestType)
{
    APPRequestTypeGet = 0,
    APPRequestTypePost
};

@interface APPNetworkManager : AFHTTPSessionManager

//命名规范 shared+类名 | default+类名 |  类名
+ (instancetype)sharedNetworkManager;

- (nullable NSURLSessionDataTask *)POSTURLString:(NSString *)URLString
                                      parameters:(nullable id)parameters
                                         rogress:(WXDownloadProgress)progressBlock
                                 completionBlock:(nullable WXCCompletion)completionBlock;


- (nullable NSURLSessionDataTask *)GETURLString:(NSString *)URLString
                                     parameters:(nullable id)parameters
                                        rogress:(WXDownloadProgress)progressBlock
                                completionBlock:(nullable WXCCompletion)completionBlock;

+ (void)resetNetworkManager;

- (nullable NSURLSessionDataTask *)requestType:(APPRequestType)type
                            URLString:(NSString *)URLString
                           parameters:(id)parameters
                              rogress:(WXDownloadProgress)progressBlock
                      completionBlock:(nullable WXCompletionBlock)completionBlock;

@end

NS_ASSUME_NONNULL_END
