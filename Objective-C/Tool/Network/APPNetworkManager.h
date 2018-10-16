//
//  APPNetworkManager.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/18.
//  Copyright © 2018年 许宝吉. All rights reserved.
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


- (nullable NSURLSessionDataTask *)requestType:(APPRequestType)type
                            URLString:(NSString *)URLString
                           parameters:(id)parameters
                              rogress:(WXDownloadProgress)progressBlock
                      completionBlock:(nullable WXCompletionBlock)completionBlock;

@end

NS_ASSUME_NONNULL_END
