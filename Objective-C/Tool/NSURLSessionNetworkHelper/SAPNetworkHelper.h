//
//  SAPNetworkHelper.h
//  SapWrappingDylib
//
//  Created by magic-devel on 2020/10/20.
//  Copyright © 2020 SAP. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^sapCompletioBlock)(NSDictionary * _Nullable dic, NSURLResponse * _Nullable response, NSError * _Nullable error);
typedef void (^sapSuccessBlock)(NSDictionary * _Nullable data);
typedef void (^sapFailureBlock)(NSError * _Nullable error);
typedef void (^sapCompletion)(NSDictionary * _Nullable dic, NSError * _Nullable error);

NS_ASSUME_NONNULL_BEGIN

@interface SAPNetworkHelper : NSObject<NSURLSessionDelegate>

+ (instancetype)sharedInstance;

/**
 * post请求
 */
- (void)sapPostWithUrlString:(NSString *)url
                  parameters:(id)parameters
                     success:(sapSuccessBlock)successBlock
                     failure:(sapFailureBlock)failureBlock;

- (void)sapUploadFileWithURLString:(NSString *)URLString serverFileName:(NSString *)serverFileName filePath:(NSString *)filePath completion:(sapCompletion)completion;


@end

NS_ASSUME_NONNULL_END
