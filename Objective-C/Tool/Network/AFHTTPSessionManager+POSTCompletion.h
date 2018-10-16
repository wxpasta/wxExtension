//
//  AFHTTPSessionManager+POSTCompletion.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/25.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>
#import "APPNetworkCallback.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFHTTPSessionManager (POSTCompletion)

#pragma mark - completion
- (nullable NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                  completionBlock:(nullable WXCompletionBlock)completionBlock;

- (nullable NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                          rogress:(nullable WXDownloadProgress)progressBlock
                  completionBlock:(nullable WXCompletionBlock)completionBlock;

- (nullable NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                       parameters:(nullable id)parameter
                  completionBlock:(nullable WXCompletionBlock)completionBlock;

- (nullable NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                       parameters:(nullable id)parameters
                          rogress:(nullable WXDownloadProgress)progressBlock
                  completionBlock:(nullable WXCompletionBlock)completionBlock;


@end

NS_ASSUME_NONNULL_END
