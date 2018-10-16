//
//  AFHTTPSessionManager+upload.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/25.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import "AFHTTPSessionManager+Upload.h"

@implementation AFHTTPSessionManager (Upload)

- (nullable NSURLSessionDataTask *)wx_fileUploadWithUrl:(NSString *)url
                                                 params:(nullable id)params
                                               progress:(nullable WXDownloadProgress)progressBlock
                                          fileDataArray:(nullable NSMutableArray *)fileDataArray
                                                   name:(nullable NSString *)name
                                               fileName:(nullable NSString *)fileName
                                               mimeType:(nullable NSString *)mimeType
                                          completeBlock:(nullable WXCompletionBlock)completeBlock
{
    return [self POST:url parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        for (NSData *fileData in fileDataArray) {
            [formData appendPartWithFileData:fileData name:name fileName:fileName mimeType:mimeType];
        }
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        if (uploadProgress) {
            progressBlock(uploadProgress.completedUnitCount, uploadProgress.totalUnitCount);
        }
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completeBlock(task,responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completeBlock(nil,nil,error);
    }];
}

@end
