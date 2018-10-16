//
//  APPNetworkCallback.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/25.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#ifndef APPNetworkCallback_h
#define APPNetworkCallback_h

typedef void (^WXCompletionBlock)(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject, NSError * _Nullable error);

typedef void (^WXDownloadProgress)(int64_t bytesRead, int64_t totalBytes);

typedef void (^WXSuccess)(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject);

typedef void (^WXFailure)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error);

#endif /* APPNetworkCallback_h */
