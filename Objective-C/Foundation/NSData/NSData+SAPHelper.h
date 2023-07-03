//
//  NSData+SAPHelper.h
//  SapIntercept
//
//  Created by magic-devel on 2020/10/15.
//  Copyright © 2020 Magic. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSData (SAPHelper)

+ (NSData *)AES128EncryptWithKey:(NSString *)key iv:(NSString *)iv data:(NSData *)data;

+ (NSData *)AES128DecryptWithKey:(NSString *)key iv:(NSString *)iv data:(NSData *)data;


+ (NSData *)sapBase64DataFromString:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
