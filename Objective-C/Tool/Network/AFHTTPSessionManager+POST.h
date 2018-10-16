//
//  AFHTTPSessionManager+POST.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/25.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>
#import "APPNetworkCallback.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFHTTPSessionManager (POST)


#pragma mark - success and failure

- (nullable NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                          success:(nullable WXSuccess)successBlock
                          failure:(nullable WXFailure)failureBlock;

- (nullable NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                          rogress:(nullable WXDownloadProgress)progressBlock
                          success:(nullable WXSuccess)successBlock
                          failure:(nullable WXFailure)failureBlock;

- (nullable NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                       parameters:(nullable id)parameters
                          success:(nullable WXSuccess)successBlock
                          failure:(nullable WXFailure)failureBlock;

- (nullable NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                       parameters:(nullable id)parameters
                          rogress:(nullable WXDownloadProgress)progressBlock
                          success:(nullable WXSuccess)successBlock
                          failure:(nullable WXFailure)failureBlock;


@end

NS_ASSUME_NONNULL_END
