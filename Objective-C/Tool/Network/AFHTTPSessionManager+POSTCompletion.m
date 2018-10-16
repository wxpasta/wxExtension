//
//  AFHTTPSessionManager+POSTCompletion.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/25.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import "AFHTTPSessionManager+POSTCompletion.h"

@implementation AFHTTPSessionManager (POSTCompletion)

#pragma mark - completion
- (NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                       parameters:(id)parameters
                          rogress:(WXDownloadProgress)progressBlock
                  completionBlock:(nullable WXCompletionBlock)completionBlock{
    return [self POST:URLString parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        progressBlock(downloadProgress.completedUnitCount, downloadProgress.totalUnitCount);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionBlock(task,responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completionBlock(task,nil,error);
    }];
}
- (NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                       parameters:(id)parameter
                  completionBlock:(nullable WXCompletionBlock)completionBlock{
    return [self wx_POST:URLString parameters:parameter rogress:nil completionBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject, NSError * _Nullable error) {
        completionBlock(task,responseObject,error);
    }];
}

- (NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                          rogress:(WXDownloadProgress)progressBlock
                  completionBlock:(nullable WXCompletionBlock)completionBlock{
    return [self wx_POST:URLString parameters:nil rogress:^(int64_t bytesRead, int64_t totalBytes) {
        progressBlock(bytesRead, totalBytes);
    } completionBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject, NSError * _Nullable error) {
        completionBlock(task,responseObject,error);
    }];
}

- (NSURLSessionDataTask *)wx_POST:(NSString *)URLString
                  completionBlock:(nullable WXCompletionBlock)completionBlock{
    return [self wx_POST:URLString parameters:nil rogress:nil completionBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject, NSError * _Nullable error) {
        completionBlock(task,responseObject,error);
    }];
}


@end
