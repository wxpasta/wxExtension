//
//  AFHTTPSessionManager+GETCompletion.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/25.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import "AFHTTPSessionManager+GETCompletion.h"

@implementation AFHTTPSessionManager (GETCompletion)

#pragma mark - completion
- (NSURLSessionDataTask *)wx_GET:(NSString *)URLString
                      parameters:(nullable id)parameters
                         rogress:(nullable WXDownloadProgress)progressBlock completionBlock:(nullable WXCompletionBlock)completionBlock{
    return [self GET:URLString parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        progressBlock(downloadProgress.completedUnitCount, downloadProgress.totalUnitCount);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionBlock(task,responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completionBlock(task,nil,error);
    }];
}

- (NSURLSessionDataTask *)wx_GET:(NSString *)URLString
                      parameters:(id)parameter
                 completionBlock:(nullable WXCompletionBlock)completionBlock{
    return [self wx_GET:URLString
             parameters:parameter
                rogress:nil
        completionBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject, NSError * _Nullable error) {
            completionBlock(task,responseObject,error);
        }];
}

- (NSURLSessionDataTask *)wx_GET:(NSString *)URLString
                         rogress:(WXDownloadProgress)progressBlock
                 completionBlock:(nullable WXCompletionBlock)completionBlock{
    return [self wx_GET:URLString parameters:nil rogress:^(int64_t bytesRead, int64_t totalBytes) {
        progressBlock(bytesRead, totalBytes);
    } completionBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject, NSError * _Nullable error) {
        completionBlock(task,responseObject,error);
    }];
}

- (NSURLSessionDataTask *)wx_GET:(NSString *)URLString
                 completionBlock:(nullable WXCompletionBlock)completionBlock{
    return [self wx_GET:URLString
             parameters:nil
                rogress:nil
        completionBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject, NSError * _Nullable error) {
            completionBlock(task,responseObject,error);
        }];
}


@end
