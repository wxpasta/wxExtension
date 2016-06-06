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
@end
