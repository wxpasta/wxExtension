//
//  AFHTTPSessionManager+upload.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/25.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>
#import "APPNetworkCallback.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFHTTPSessionManager (Upload)

/**
 *  上传文件方法
 *
 *  @param url            url地址
 *  @param params         参数
 *  @param progressBlock  进度
 *  @param fileDataArray  文件数组(图片数组)里面放的是NSData类型
 *  @param name           文件参数名字
 *  @param fileName       文件名字
 *  @param mimeType       mimeType类型
 *  @param completeBlock  block
 
 */
- (nullable NSURLSessionDataTask *)wx_fileUploadWithUrl:(NSString *)url
                                                 params:(nullable id)params
                                               progress:(nullable WXDownloadProgress)progressBlock
                                          fileDataArray:(nullable NSMutableArray *)fileDataArray
                                                   name:(nullable NSString *)name
                                               fileName:(nullable NSString *)fileName
                                               mimeType:(nullable NSString *)mimeType
                                          completeBlock:(nullable WXCompletionBlock)completeBlock;

@end

NS_ASSUME_NONNULL_END
