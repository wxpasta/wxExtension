//
//  NSString+SAPHelper.h
//  SapWrappingDylib
//
//  Created by magic-devel on 2020/10/19.
//  Copyright © 2020 SAP. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (SAPHelper)

#pragma mark - 获取设备名称
+ (NSString *)sapGetDeviceName;

#pragma mark - 数组转字符串
+ (NSString *)sapArrayToJSONString:(NSMutableArray*)array;


+ (NSString *)sapBase64Encode:(NSData *)data;

+ (NSString *)AES128CBC_PKCS5Padding_EncryptStrig:(NSString *)string keyAndIv:(NSString *)keyAndIv;

+ (NSString *)AES128CBC_PKCS5Padding_DecryptString:(NSString *)string keyAndIv:(NSString *)keyAndIv;

@end

NS_ASSUME_NONNULL_END
