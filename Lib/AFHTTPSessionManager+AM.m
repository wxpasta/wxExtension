#import "AFHTTPSessionManager+AM.h"

@implementation AFHTTPSessionManager (AM)

- (nullable NSURLSessionDataTask *)wx_GET:(nullable NSString *)urlString
                                paraments:(nullable id)paraments
                            completeBlock:(nullable wx_completeBlock)completeBlock
{
    return [self GET:urlString
          parameters:paraments
            progress:^(NSProgress * _Nonnull downloadProgress) {
                
            } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                
//            NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject
//                                                                 options:NSJSONReadingMutableContainers error:nil];
//            NSLog(@"dict start ----\n%@   \n ---- end  -- ", dict);
                
                completeBlock(responseObject,nil);
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                completeBlock(nil,error);
            }];
}

- (nullable NSURLSessionDataTask *)wx_POST:(nullable NSString *)urlString
                                 paraments:(nullable id)paraments
                             completeBlock:(nullable wx_completeBlock)completeBlock
{
    // 不加上这句话，会报“Request failed: unacceptable content-type: text/plain”错误
    self.requestSerializer = [AFJSONRequestSerializer serializer];//请求
    self.responseSerializer = [AFHTTPResponseSerializer serializer];//响应
    
    // post请求
    return [self POST:urlString
           parameters:paraments
constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
    // 拼接data到请求体，这个block的参数是遵守AFMultipartFormData协议的。
            }progress:^(NSProgress * _Nonnull uploadProgress){
    
                } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                    
//                    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject
//                                                                         options:NSJSONReadingMutableContainers error:nil];
//                    NSLog(@"dict start ----\n%@   \n ---- end  -- ", dict);
                    // 请求成功，解析数据
                    completeBlock(responseObject,nil);
                } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                    NSLog(@"%@", [error localizedDescription]);
                    // 请求失败
                    completeBlock(nil,error);
}];
}

- (nullable NSURLSessionDataTask *)wx_GET:(nullable NSString *)urlString
                                   params:(nullable NSDictionary *)paraments
                                  success:(nullable wx_success)success
                                     fail:(nullable wx_failure)fail
{
    return [self GET:urlString
          parameters:paraments
            progress:^(NSProgress * _Nonnull downloadProgress){
                
            }success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject){
                success(task,responseObject);
            }failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                fail(task,error);
            }];
}

- (nullable NSURLSessionDataTask *)wx_POST:(nullable NSString *)urlString
                                    params:(nullable NSDictionary *)paraments
                                   success:(nullable wx_success)success
                                      fail:(nullable wx_failure)fail
{
    // 不加上这句话，会报“Request failed: unacceptable content-type: text/plain”错误
    self.requestSerializer = [AFJSONRequestSerializer serializer];//请求
    self.responseSerializer = [AFHTTPResponseSerializer serializer];//响应
    
    return [self POST:urlString
           parameters:paraments
             progress:^(NSProgress * _Nonnull downloadProgress){
                 
             }success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject){
                 success(task,responseObject);
             }failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                 fail(task,error);
             }];
}

- (nullable NSURLSessionDataTask *)wx_requestWithType:(HTTPSRequestType)type
                                            urlString:(nullable NSString *)urlString
                                            paraments:(nullable id)paraments
                                        completeBlock:(nullable wx_completeBlock)completeBlock
{
    switch (type) {
        case HTTPSRequestTypeGet:
        {
            return  [self wx_GET:urlString
                       paraments:paraments
                   completeBlock:^(NSDictionary * _Nullable object, NSError * _Nullable error) {
                       completeBlock(object,error);
                   }];
        }
        case HTTPSRequestTypePost:
            return [self wx_POST:urlString
                       paraments:paraments
                   completeBlock:^(NSDictionary * _Nullable object, NSError * _Nullable error) {
                       completeBlock(object,error);
                   }];
    }
    
}

- (nullable NSURLSessionDataTask *)wx_requestWithType:(HTTPSRequestType)type
                                                paraments:(nullable id)paraments
                                            completeBlock:(nullable wx_completeBlock)completeBlock
{
    return [self wx_requestWithType:type
                          urlString:@""
                          paraments:paraments
                      completeBlock:^(NSDictionary * _Nullable object, NSError * _Nullable error) {
                          completeBlock(object,error);
                      }];
}

- (nullable NSURLSessionDataTask *)wx_fileUploadWithUrl:(nullable NSString *)url
                                                 params:(nullable id)params
                                               progress:(nullable void (^)(NSProgress * _Nullable downloadProgress))progress
                                          fileDataArray:(nullable NSMutableArray *)fileDataArray
                                                   name:(nullable NSString *)name
                                               fileName:(nullable NSString *)fileName
                                               mimeType:(nullable NSString *)mimeType
                                          completeBlock:(nullable wx_completeBlock)completeBlock
{
    return [self POST:url parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        for (NSData *fileData in fileDataArray) {
            [formData appendPartWithFileData:fileData name:name fileName:fileName mimeType:mimeType];
        }
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        if (progress) {
            progress(uploadProgress);
        }
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        

//        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject
//                                                             options:NSJSONReadingMutableContainers error:nil];
//        NSLog(@"dict start ----\n%@   \n ---- end  -- ", dict);
        
        completeBlock(responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completeBlock(nil,error);

    }];
}
@end
