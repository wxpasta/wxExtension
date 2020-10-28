//
//  APPNetworkManager.m
//  vmp
//
//  Created by magic-devel on 2020/9/12.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import "APPNetworkManager.h"
#import "APIURLString.h"
#import "AFHTTPSessionManager+POSTCompletion.h"
#import "AFHTTPSessionManager+GETCompletion.h"


static AFNetworkReachabilityStatus networkReachabilityStatus;

@interface APPNetworkManager ()

//记录code为-1005连接的请求次数
//{key - method ,value - faildcount}
@property (nonatomic, strong) NSMutableDictionary *code_1005_method_count_dic;

@end

@implementation APPNetworkManager

static APPNetworkManager *networkManager;
static dispatch_once_t onceToken;

+ (instancetype)sharedNetworkManager
{
    dispatch_once(&onceToken, ^{
        networkManager = [[APPNetworkManager alloc]initWithBaseURL:kAPIBaseURLString];
        networkManager.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        networkManager.requestSerializer = [AFJSONRequestSerializer serializer];
        [networkManager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
//        [networkManager.requestSerializer setValue:@"text/html" forHTTPHeaderField:@"Content-Type"];
        
        
        NSMutableSet *contentTypes = [NSMutableSet set];
        
        [contentTypes addObject:@"application/hal+json"];//添加类型
        [contentTypes addObject:@"application/octet-stream"];
        [contentTypes addObject:@"text/html"];
        [contentTypes addObject:@"text/plain"];
        [contentTypes addObject:@"application/json"];
        [contentTypes addObject:@"text/json"];
        [contentTypes addObject:@"text/javascript"];
        networkManager.responseSerializer.acceptableContentTypes = contentTypes;
        
        networkManager.securityPolicy.allowInvalidCertificates = YES;
        networkManager.securityPolicy.validatesDomainName = NO;
        
        [networkManager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
        networkManager.requestSerializer.timeoutInterval = 30.0;
        [networkManager.requestSerializer didChangeValueForKey:@"timeoutInterval"];
        
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
        DDLogInfo(@"networkStatus : %@", [self showNetworkReachabilityStatus:status]);
        networkReachabilityStatus = status;
    }];
}

- (nullable NSURLSessionDataTask *)POSTURLString:(NSString *)URLString
                                      parameters:(nullable id)parameters
                                         rogress:(WXDownloadProgress)progressBlock
                                 completionBlock:(nullable WXCCompletion)completionBlock {
    return [self wx_POST:URLString parameters:parameters rogress:^(int64_t bytesRead, int64_t totalBytes) {
        progressBlock(bytesRead, totalBytes);
    } completionBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject, NSError * _Nullable error) {
        NSHTTPURLResponse *URLResponse = (NSHTTPURLResponse *)task.response;
        NSString *strError = [[NSString alloc] initWithData:[error.userInfo valueForKey:AFNetworkingOperationFailingURLResponseDataErrorKey] encoding:NSUTF8StringEncoding];
        if (URLResponse.statusCode == 401) {
            responseObject = strError;
            completionBlock(task, responseObject, nil, URLResponse.statusCode);
        }else{
            if (error.code == -1005) {
                DDLogInfo(@"等待3S将重新请求任务");
                //这是定义的一个字典，用来记录请求错误的的接口名以及错误的次数
                self.code_1005_method_count_dic = [[NSMutableDictionary alloc] init];
                [self.code_1005_method_count_dic setObject:@(1) forKey:URLString];
                //重新请求的方法
                dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
                    dispatch_group_t downloadGroup = dispatch_group_create();
                    dispatch_group_enter(downloadGroup);
                    dispatch_group_wait(downloadGroup, dispatch_time(DISPATCH_TIME_NOW, 3000000000)); // Wait 3 seconds before trying again.
                    dispatch_group_leave(downloadGroup);
                    dispatch_async(dispatch_get_main_queue(), ^{
                        VMPWeakSelf;
                        [weakSelf resetPOSTURLString:URLString
                                          parameters:parameters
                                             rogress:^(int64_t bytesRead, int64_t totalBytes) {
                            progressBlock(bytesRead, totalBytes);
                        } completionBlock:^(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject, NSError * _Nullable error) {
                            completionBlock(task, responseObject, error, URLResponse.statusCode);
                        }];
                    });
                });
            }else{
                completionBlock(task, responseObject, error, URLResponse.statusCode);
            }
        }
    }];
}

- (nullable NSURLSessionDataTask *)resetPOSTURLString:(NSString *)URLString
                                           parameters:(nullable id)parameters
                                              rogress:(WXDownloadProgress)progressBlock
                                      completionBlock:(nullable WXCompletionBlock)completionBlock {
    DDLogInfo(@"重新请求%@",URLString);
    return [self POST:URLString
           parameters:parameters
             progress:^(NSProgress * _Nonnull downloadProgress) {
        progressBlock(downloadProgress.completedUnitCount, downloadProgress.totalUnitCount);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionBlock(task,responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (error.code == -1005) {
            int count =  [self.code_1005_method_count_dic[URLString] intValue];
            if (count >= 5) {
                NSLog(@"重新请求超过限制，停止请求");
                return;
            }else{
                VMPWeakSelf;
                [weakSelf resetPOSTURLString:URLString
                                  parameters:parameters
                                     rogress:^(int64_t bytesRead, int64_t totalBytes) {
                    progressBlock(bytesRead, totalBytes);
                } completionBlock:^(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject, NSError * _Nullable error) {
                    completionBlock(task,responseObject,error);
                }];
            }
        }else{
            completionBlock(task,nil,error);
        }
    }];
}


- (nullable NSURLSessionDataTask *)GETURLString:(NSString *)URLString
                                     parameters:(nullable id)parameters
                                        rogress:(WXDownloadProgress)progressBlock
                                completionBlock:(nullable WXCCompletion)completionBlock {
    return [self wx_GET:URLString parameters:parameters rogress:^(int64_t bytesRead, int64_t totalBytes) {
        progressBlock(bytesRead, totalBytes);
    } completionBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject, NSError * _Nullable error) {
        NSHTTPURLResponse *URLResponse = (NSHTTPURLResponse *)task.response;
        NSString *strError = [[NSString alloc] initWithData:[error.userInfo valueForKey:AFNetworkingOperationFailingURLResponseDataErrorKey] encoding:NSUTF8StringEncoding];
        if (URLResponse.statusCode == 401) {
            responseObject = strError;
            completionBlock(task, responseObject, nil, URLResponse.statusCode);
        }else{
            if (error.code == -1005) {
                DDLogInfo(@"等待3S将重新请求任务");
                //这是定义的一个字典，用来记录请求错误的的接口名以及错误的次数
                self.code_1005_method_count_dic = [[NSMutableDictionary alloc] init];
                [self.code_1005_method_count_dic setObject:@(1) forKey:URLString];
                //重新请求的方法
                dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
                    dispatch_group_t downloadGroup = dispatch_group_create();
                    dispatch_group_enter(downloadGroup);
                    dispatch_group_wait(downloadGroup, dispatch_time(DISPATCH_TIME_NOW, 3000000000)); // Wait 3 seconds before trying again.
                    dispatch_group_leave(downloadGroup);
                    dispatch_async(dispatch_get_main_queue(), ^{
                        VMPWeakSelf;
                        [weakSelf resetGETURLString:URLString
                                          parameters:parameters
                                             rogress:^(int64_t bytesRead, int64_t totalBytes) {
                            progressBlock(bytesRead, totalBytes);
                        } completionBlock:^(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject, NSError * _Nullable error) {
                            completionBlock(task, responseObject, error, URLResponse.statusCode);
                        }];
                    });
                });
            }else{
                completionBlock(task, responseObject, error, URLResponse.statusCode);
            }
        }
    }];
}

- (nullable NSURLSessionDataTask *)resetGETURLString:(NSString *)URLString
                                          parameters:(nullable id)parameters
                                             rogress:(WXDownloadProgress)progressBlock
                                     completionBlock:(nullable WXCompletionBlock)completionBlock {
    DDLogInfo(@"重新请求%@",URLString);
    return [self GET:URLString
          parameters:parameters
            progress:^(NSProgress * _Nonnull downloadProgress) {
        progressBlock(downloadProgress.completedUnitCount, downloadProgress.totalUnitCount);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionBlock(task,responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (error.code == -1005) {
            int count =  [self.code_1005_method_count_dic[URLString] intValue];
            if (count >= 5) {
                NSLog(@"重新请求超过限制，停止请求");
                return;
            }else{
                VMPWeakSelf;
                [weakSelf resetPOSTURLString:URLString
                                  parameters:parameters
                                     rogress:^(int64_t bytesRead, int64_t totalBytes) {
                    progressBlock(bytesRead, totalBytes);
                } completionBlock:^(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject, NSError * _Nullable error) {
                    completionBlock(task,responseObject,error);
                }];
            }
        }else{
            completionBlock(task,nil,error);
        }
    }];
}



+ (void)resetNetworkManager {
    onceToken = 0;
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
