//
//  APPNetworkCallback.h
//  vmp
//
//  Created by magic-devel on 2020/9/12.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#ifndef APPNetworkCallback_h
#define APPNetworkCallback_h

typedef void (^WXCompletionBlock)(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject, NSError * _Nullable error);

typedef void (^WXDownloadProgress)(int64_t bytesRead, int64_t totalBytes);

typedef void (^WXSuccess)(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject);

typedef void (^WXFailure)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error);


typedef void (^WXCCompletion)(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject, NSError * _Nullable error, NSInteger code);
#endif /* APPNetworkCallback_h */
