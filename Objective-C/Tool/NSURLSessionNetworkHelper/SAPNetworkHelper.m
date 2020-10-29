//
//  SAPNetworkHelper.m
//  SapWrappingDylib
//
//  Created by magic-devel on 2020/10/20.
//  Copyright © 2020 SAP. All rights reserved.
//

#import "SAPNetworkHelper.h"

//定义一个变量
static SAPNetworkHelper *helper = nil;

@implementation SAPNetworkHelper

+ (instancetype)sharedInstance {
    static id sharedInstance;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedInstance = [[SAPNetworkHelper alloc] init];
    });
    return sharedInstance;
}

//post请求
- (void)sapPostWithUrlString:(NSString *)urlString
                  parameters:(NSDictionary *)parameters
                     success:(sapSuccessBlock)successBlock
                     failure:(sapFailureBlock)failureBlock {
    
    NSData *data = [NSJSONSerialization dataWithJSONObject:parameters options:NSJSONWritingPrettyPrinted error:nil];
    NSString *bodyData = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    configuration.timeoutIntervalForRequest = 10;
    
    //设置请求方式
    request.HTTPMethod = @"POST";
    [request setHTTPBody:[NSData dataWithBytes:[bodyData UTF8String] length:strlen([bodyData UTF8String])]];
    [request setValue:@"application/json; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    
    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration
                                                          delegate:(id<NSURLSessionDelegate>)helper
                                                     delegateQueue:queue];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                                completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            failureBlock(error);
        }
        else{
            NSDictionary* responseDic = [NSJSONSerialization JSONObjectWithData:data
                                                                        options:NSJSONReadingMutableContainers
                                                                          error:nil];
            successBlock(responseDic);
        }
    }];
    [dataTask resume];
}

#pragma mark - NSURLSessionDelegate 代理方法
-(void)URLSession:(NSURLSession *)session didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition, NSURLCredential * _Nullable))completionHandler {

    NSURLSessionAuthChallengeDisposition disposition = NSURLSessionAuthChallengePerformDefaultHandling;
    __block NSURLCredential *credential = nil;

    if ([challenge.protectionSpace.authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust]) {
        credential = [NSURLCredential credentialForTrust:challenge.protectionSpace.serverTrust];
        if (credential) {
            disposition = NSURLSessionAuthChallengeUseCredential;
        } else {
            disposition = NSURLSessionAuthChallengePerformDefaultHandling;
        }
    } else {
        disposition = NSURLSessionAuthChallengePerformDefaultHandling;
    }

    if (completionHandler) {
        completionHandler(disposition, credential);
    }
}

/**
 *  文件上传主方法
 *
 *  @param URLString      文件上传地址
 *  @param serverFileName 服务器接收文件的字段名,开发中由服务器那边提供
 *  @param filePath       文件路径,有了路径就可以获取到文件二进制数据和文件名
 */
- (void)sapUploadFileWithURLString:(NSString *)URLString serverFileName:(NSString *)serverFileName filePath:(NSString *)filePath completion:(sapCompletion)completion
{
    // URL
    NSURL *URL= [NSURL URLWithString:URLString];

    // 可变请求
    NSMutableURLRequest *requestM = [NSMutableURLRequest requestWithURL:URL];
    // 设置请求头信息
    [requestM setValue:@"multipart/form-data; boundary=sap" forHTTPHeaderField:@"Content-Type"];
    // 设置请求方法
    requestM.HTTPMethod = @"POST";
    // 设置请求
    requestM.HTTPBody = [self sapGetHTTPBodyWithServerFileName:serverFileName filePath:filePath];

    // 发送请求实现图片上传
    [[[NSURLSession sharedSession] dataTaskWithRequest:requestM completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        // 处理响应
        if (error == nil && data != nil) {
            // 反序列化
            NSDictionary *result = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
            SAPLog(@"%@",result);
            if (completion) {
                completion(result,nil);
            }
        } else {
            SAPLog(@"%@",error);
            if (completion) {
                completion(nil,error);
            }
        }

    }] resume];
}

/**
 *  获取请求体信息
 *
 *  @param serverFileName 服务器接收文件的字段名
 *  @param filePath       文件路径
 *
 *  @return 返回请求体二进制信息
 */
- (NSData *)sapGetHTTPBodyWithServerFileName:(NSString *)serverFileName filePath:(NSString *)filePath
{
    // 定义dataM,拼接请求体的二进制信息
    NSMutableData *dataM = [NSMutableData data];

    // 拼接文件二进制前面的字符串
    NSMutableString *stringM = [NSMutableString string];

    // 拼接文件开始的分隔符
    [stringM appendString:@"--sap\r\n"];
    // 拼接表单数据
    [stringM appendFormat:@"Content-Disposition: form-data; name=%@; filename=%@\r\n",serverFileName,[filePath lastPathComponent]];
    // 拼接文件类型
    [stringM appendString:@"Content-Type: application/zip\r\n"];
    // 拼接单纯的换行
    [stringM appendString:@"\r\n"];
    // 把这部分的字符串转成二进制,拼接到dataM里面
    [dataM appendData:[stringM dataUsingEncoding:NSUTF8StringEncoding]];

    // 拼接文件的二进制数据
    [dataM appendData:[NSData dataWithContentsOfFile:filePath]];

    // 拼接文件结束的分隔符
    NSString *end = @"\r\n--sap--";
    [dataM appendData:[end dataUsingEncoding:NSUTF8StringEncoding]];

    return dataM.copy;
}

@end
