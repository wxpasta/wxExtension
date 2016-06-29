#import <AFNetworking/AFNetworking.h>

typedef void (^wx_success)(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject);

typedef void (^wx_failure)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error);

typedef void (^wx_completeBlock)( NSDictionary *_Nullable object, NSError * _Nullable error);

typedef NS_ENUM(NSUInteger,HTTPSRequestType)
{
    HTTPSRequestTypeGet = 0,
    HTTPSRequestTypePost
};

@interface AFHTTPSessionManager (AM)

- (nullable NSURLSessionDataTask *)wx_GET:(nullable NSString *)urlString
                                paraments:(nullable id)paraments
                            completeBlock:(nullable wx_completeBlock)completeBlock;

- (nullable NSURLSessionDataTask *)wx_POST:(nullable NSString *)urlString
                                 paraments:(nullable id)paraments
                             completeBlock:(nullable wx_completeBlock)completeBlock;

- (nullable NSURLSessionDataTask *)wx_GET:(nullable NSString *)urlString
                                   params:(nullable NSDictionary *)paraments
                                  success:(nullable wx_success)success
                                     fail:(nullable wx_failure)fail;

- (nullable NSURLSessionDataTask *)wx_POST:(nullable NSString *)urlString
                                    params:(nullable NSDictionary *)paraments
                                   success:(nullable wx_success)success
                                      fail:(nullable wx_failure)fail;

- (nullable NSURLSessionDataTask *)wx_requestWithType:(HTTPSRequestType)type
                                            urlString:(nullable NSString *)urlString
                                            paraments:(nullable id)paraments
                                        completeBlock:(nullable wx_completeBlock)completeBlock;

- (nullable NSURLSessionDataTask *)wx_requestWithType:(HTTPSRequestType)type
                                            paraments:(nullable id)paraments
                                        completeBlock:(nullable wx_completeBlock)completeBlock;


/**
 *  上传文件方法
 *
 *  @param url            url地址
 *  @param params         参数
 *  @param progress       进度
 *  @param fileDataArray  文件数组(图片数组)里面放的是NSData类型
 *  @param name           文件参数名字
 *  @param fileName       文件名字
 *  @param mimeType       mimeType类型
 *  @param completeBlock  block

 */
- (nullable NSURLSessionDataTask *)wx_fileUploadWithUrl:(nullable NSString *)url
                                                 params:(nullable id)params
                                               progress:(nullable void (^)(NSProgress * _Nullable downloadProgress))progress
                                          fileDataArray:(nullable NSMutableArray *)fileDataArray
                                                   name:(nullable NSString *)name
                                               fileName:(nullable NSString *)fileName
                                               mimeType:(nullable NSString *)mimeType
                                          completeBlock:(nullable wx_completeBlock)completeBlock;
@end
