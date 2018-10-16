//
//  AFHTTPSessionManager+POST.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/25.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import "AFHTTPSessionManager+POST.h"

@implementation AFHTTPSessionManager (POST)


#pragma mark - success and failure
- (NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                       parameters:(nullable id)parameters
                          rogress:(nullable WXDownloadProgress)progressBlock
                          success:(nullable WXSuccess)successBlock
                          failure:(nullable WXFailure)failureBlock
{
    return [self POST:URLString parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        progressBlock(downloadProgress.completedUnitCount, downloadProgress.totalUnitCount);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        successBlock(task, responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failureBlock(task, error);
    }];
}

- (NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                          rogress:(WXDownloadProgress)progressBlock
                          success:(nullable WXSuccess)successBlock
                          failure:(nullable WXFailure)failureBlock
{
    return [self wx_POST:URLString
              parameters:nil
                 rogress:^(int64_t bytesRead, int64_t totalBytes) {
                     progressBlock(bytesRead, totalBytes);
                 } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                     successBlock(task, responseObject);
                 } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                     failureBlock(task, error);
                 }];
}

- (NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                       parameters:(id)parameters
                          success:(nullable WXSuccess)successBlock
                          failure:(nullable WXFailure)failureBlock
{
    return [self wx_POST:URLString
              parameters:parameters
                 rogress:nil
                 success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                     successBlock(task, responseObject);
                 } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                     failureBlock(task, error);
                 }];
}

- (NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                          success:(nullable WXSuccess)successBlock
                          failure:(nullable WXFailure)failureBlock
{
    return [self wx_POST:URLString
              parameters:nil
                 rogress:nil
                 success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                     successBlock(task, responseObject);
                 } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                     failureBlock(task, error);
                 }];
}

@end
