//
//  NSObject+Protocol.m
//  VRMax
//
//  Created by VRGATE on 16/5/13.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

#import "NSObject+Protocol.h"

#import "BJAppClient.h"
#import "ParseModel_all.h"
#import "RequestModel_all.h"

@implementation NSObject (Protocol)

+ (nullable NSURLSessionDataTask *)requestVideotList:(NSInteger)page
                                       completeBlock:(nullable void (^)(BJResult  * _Nullable rr,NSArray  * _Nullable arr,NSInteger page))block
{
    
    BJVideoListBean *bean = [BJVideoListBean videoListBeanWithPage:@(page)];
    NSDictionary *parameters = bean.mj_keyValues;
    
    return [BJAppClient requestWithRequestType:HTTPSRequestTypeGet
                                       paraments:parameters
                                   completeBlock:^(NSDictionary * _Nullable object, NSError * _Nullable error) {
                                       
                                       BJResult *rr = [BJResult mj_objectWithKeyValues:object];
                                       
                                       if (rr.isSucceed) {
                                           BJVideo *video = [BJVideo mj_objectWithKeyValues:rr.data];
                                           NSMutableArray *vList = [BJVideoDetail mj_objectArrayWithKeyValuesArray:video.list];
                                           block(rr,vList,video.ppageno);
                                       }else{
                                           block(rr,nil,1);
                                       }
                                   }];
}


+ (nullable NSURLSessionDataTask *)requestLogin:(nonnull NSString *)phone
                                       password:(nonnull NSString *)password
                                  completeBlock:(nullable void (^)(BJResult  * _Nullable rr, BJUser *_Nullable u))block
{
    
    BJLoginBean *bean = [BJLoginBean loginBeanWithPhone:phone password:password];
    NSDictionary *parameters = bean.mj_keyValues;
    
    return [BJAppClient requestWithRequestType:HTTPSRequestTypePost
                                       paraments:parameters
                                   completeBlock:^(NSDictionary * _Nullable object, NSError * _Nullable error) {
                                       
                                       BJResult *rr = [BJResult mj_objectWithKeyValues:object];
                                       
                                       if (rr.isSucceed) {
                                           
                                           BJUser *user = [BJUser mj_objectWithKeyValues:rr.data];
                                           block(rr,user);
                                       }else{
                                           block(rr,nil);
                                       }
                                   }];
}

+ (nullable NSURLSessionDataTask *)postRegister:(nonnull NSString *)phone
                                       password:(nonnull NSString *)password
                                        captcha:(nonnull NSString *)captcha
                                  completeBlock:(nullable void (^)(BJResult  * _Nullable rr, BJUser *_Nullable u))block
{
    
    BJRegisterBean *bean = [BJRegisterBean registerBeanWithPhone:phone password:password captcha:captcha];
    NSDictionary *parameters = bean.mj_keyValues;
    
    return [BJAppClient requestWithRequestType:HTTPSRequestTypePost
                                       paraments:parameters
                                   completeBlock:^(NSDictionary * _Nullable object, NSError * _Nullable error) {
                                       
                                       BJResult *rr = [BJResult mj_objectWithKeyValues:object];
                                       
                                       if (rr.isSucceed) {
                                           
                                           BJUser *user = [BJUser mj_objectWithKeyValues:rr.data];
                                           block(rr,user);
                                       }else{
                                           block(rr,nil);
                                       }
                                   }];
}

+ (nullable NSURLSessionDataTask *)postCaptcha:(nonnull NSString *)phone
                                 completeBlock:(nullable void (^)(BJResult  * _Nullable rr,NSString *_Nullable phone_code))block
{
    
    BJCaptchaBean *bean = [BJCaptchaBean captchaBeanWithPhone:phone];
    NSDictionary *parameters = bean.mj_keyValues;

    return [BJAppClient requestWithRequestType:HTTPSRequestTypePost
                                       paraments:parameters
                                   completeBlock:^(NSDictionary * _Nullable object, NSError * _Nullable error) {
                                       
                                       BJResult *rr = [BJResult mj_objectWithKeyValues:object];
                                       
                                       if (rr.isSucceed) {
                                           BJCaptcha * c = [BJCaptcha mj_objectWithKeyValues:rr.data];
                                           block(rr,c.phone_code);
                                       }else{
                                           block(rr,nil);
                                       }
                                   }];
    
}

+ (nullable NSURLSessionDataTask *)requestOtherLoginWithSnstype:(NSInteger)snstype
                                                           name:(nonnull NSString *)name
                                                         openid:(nonnull NSString *)openid
                                                  completeBlock:(nullable void (^)(BJResult  * _Nullable rr, BJUser *_Nullable u))block
{
    
    BJOtherLoginBean *bean = [BJOtherLoginBean otherLoginBeanWithSnstype:snstype name:name openid:openid];
    NSDictionary *parameters = bean.mj_keyValues;
    
    return [BJAppClient requestWithRequestType:HTTPSRequestTypePost
                                       paraments:parameters
                                   completeBlock:^(NSDictionary * _Nullable object, NSError * _Nullable error) {
                                            
                                            BJResult *rr = [BJResult mj_objectWithKeyValues:object];
                                            
                                            if (rr.isSucceed) {
                                                
                                                BJUser *user = [BJUser mj_objectWithKeyValues:rr.data];
                                                block(rr,user);
                                            }else{
                                                block(rr,nil);
                                            }
                                        }];
}

@end
