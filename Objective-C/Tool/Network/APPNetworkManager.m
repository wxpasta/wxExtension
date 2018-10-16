//
//  APPNetworkManager.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/18.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import "APPNetworkManager.h"
#import "APIURLString.h"
#import "AFHTTPSessionManager+GETCompletion.h"
#import "AFHTTPSessionManager+POSTCompletion.h"

static AFNetworkReachabilityStatus networkReachabilityStatus;

@interface APPNetworkManager ()


@end

@implementation APPNetworkManager

static APPNetworkManager *networkManager;

+ (instancetype)sharedNetworkManager
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        networkManager = [[APPNetworkManager alloc]initWithBaseURL:[NSURL URLWithString:kAPIBaseURLString]];
        networkManager.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    });
    return networkManager;
}

// new -> alloc -> allocWithZone 最终必须调用的方法
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        networkManager = [super allocWithZone:zone];
    });
    return networkManager;
}

-(id)copyWithZone:(NSZone *)zone
{
    return networkManager;
}

+ (NSString *)showNetworkReachabilityStatus:(AFNetworkReachabilityStatus)status {
    NSString *networkStatus = nil;
    switch (status) {
        case AFNetworkReachabilityStatusUnknown:
            networkStatus = @"Unknown";
            break;
        case AFNetworkReachabilityStatusNotReachable:
            networkStatus = @"ANotReachable";
            break;
            
        case AFNetworkReachabilityStatusReachableViaWWAN:
            networkStatus = @"ViaWWAN";
            break;
            
        case AFNetworkReachabilityStatusReachableViaWiFi:
            networkStatus = @"ViaWiFi";
            break;
        default:
            break;
    }
    return networkStatus;
}

+ (void)load{
    //开始监听网络
    // 检测网络连接的单例,网络变化时的回调方法
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    [manager startMonitoring];
    
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        NSLog(@"networkStatus : %@", [self showNetworkReachabilityStatus:status]);
        networkReachabilityStatus = status;
    }];
}

- (nullable NSURLSessionDataTask *)requestType:(APPRequestType)type
                            URLString:(NSString *)URLString
                           parameters:(id)parameters
                              rogress:(WXDownloadProgress)progressBlock
                      completionBlock:(nullable WXCompletionBlock)completionBlock{
    
    //网络验证
    if (networkReachabilityStatus == AFNetworkReachabilityStatusNotReachable) {
        
        NSError *error = [NSError errorWithDomain:@"APPNetwork.ErrorDomain" code:0 userInfo:@{ NSLocalizedDescriptionKey:@"Network error, please check network connection"}];
        completionBlock(nil, nil, error);
        return nil;
    }
    
    if (type == APPRequestTypeGet) {
        return [self wx_GET:URLString parameters:parameters rogress:^(int64_t bytesRead, int64_t totalBytes) {
            progressBlock(bytesRead, totalBytes);
        } completionBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject, NSError * _Nullable error) {
            completionBlock(task, responseObject, error);
        }];
    }else if (type == APPRequestTypePost){
        return [self wx_POST:URLString parameters:parameters rogress:^(int64_t bytesRead, int64_t totalBytes) {
            progressBlock(bytesRead, totalBytes);
        } completionBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject, NSError * _Nullable error) {
            completionBlock(task, responseObject, error);
        }];
    }else{
        return  nil;
    }
}

@end
