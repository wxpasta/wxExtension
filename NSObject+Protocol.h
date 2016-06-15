//
//  NSObject+Protocol.h
//  VRMax
//
//  Created by VRGATE on 16/5/13.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BJResult;
@class BJUser;

@interface NSObject (Protocol)
+ (nullable NSURLSessionDataTask *)requestVideotList:(NSInteger)page
                                       completeBlock:(nullable void (^)(BJResult  * _Nullable rr,NSArray  * _Nullable arr,NSInteger page))block;


+ (nullable NSURLSessionDataTask *)requestLogin:(nonnull NSString *)phone
                                       password:(nonnull NSString *)password
                                  completeBlock:(nullable void (^)(BJResult  *_Nullable rr, BJUser *_Nullable u))block;

+ (nullable NSURLSessionDataTask *)postCaptcha:(nonnull NSString *)phone
                                 completeBlock:(nullable void (^)(BJResult  * _Nullable rr,NSString *_Nullable phone_code))block;

+ (nullable NSURLSessionDataTask *)postRegister:(nonnull NSString *)phone
                                       password:(nonnull NSString *)password
                                        captcha:(nonnull NSString *)captcha
                                  completeBlock:(nullable void (^)(BJResult  * _Nullable rr, BJUser *_Nullable u))block;

+ (nullable NSURLSessionDataTask *)requestOtherLoginWithSnstype:(NSInteger)snstype
                                                           name:(nonnull NSString *)name
                                                         openid:(nonnull NSString *)openid
                                                  completeBlock:(nullable void (^)(BJResult  * _Nullable rr, BJUser *_Nullable u))block;

+ (nullable NSURLSessionDataTask *)requestNoLoginWithcompleteBlock:(nullable void (^)(BJResult  * _Nullable rr))block;

+ (nullable NSURLSessionDataTask *)requestAutoLoginWithcompleteBlock:(nullable void (^)(BJResult  * _Nullable rr))block;

@end
