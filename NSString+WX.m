//
//  NSString+WX.m
//  VRMAX
//
//  Created by AngieMita on 16/6/12.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "NSString+WX.h"
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonHMAC.h>

@implementation NSString (WX)

- (unsigned long long)wx_fileSize
{
    // 总大小
    unsigned long long size = 0;
    
    // 文件管理者
    NSFileManager *mgr = [NSFileManager defaultManager];
    
    // 是否为文件夹
    BOOL isDirectory = NO;
    
    // 路径是否存在
    BOOL exists = [mgr fileExistsAtPath:self isDirectory:&isDirectory];
    if (!exists) return size;
    
    if (isDirectory) { // 文件夹
        // 获得文件夹的大小  == 获得文件夹中所有文件的总大小
        NSDirectoryEnumerator *enumerator = [mgr enumeratorAtPath:self];
        for (NSString *subpath in enumerator) {
            // 全路径
            NSString *fullSubpath = [self stringByAppendingPathComponent:subpath];
            // 累加文件大小
            size += [mgr attributesOfItemAtPath:fullSubpath error:nil].fileSize;
        }
    } else { // 文件
        size = [mgr attributesOfItemAtPath:self error:nil].fileSize;
    }
    
    return size;
}

-(BOOL)wx_isTelephone
{
    NSString * reg = @"^1\\d{10}$";
    NSPredicate *regextest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", reg];
    return [regextest evaluateWithObject:self.wx_simpleTelephone];
}

-(NSString*)wx_simpleTelephone
{
    if([self hasPrefix:@"+86"])
        return [self substringFromIndex:3];
    if([self hasPrefix:@"86"])
        return [self substringFromIndex:2];
    return self;
}

-(BOOL)wx_isNumber
{
    NSString * reg = @"^\\d+$";
    NSPredicate *regextest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", reg];
    return [regextest evaluateWithObject:self];
}

-(NSString*)wx_trim
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

-(BOOL)wx_isCaptcha
{
    NSString * reg = @"\\d{6}$";
    NSPredicate *regextest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", reg];
    return [regextest evaluateWithObject:self.wx_simpleTelephone];
}

- (NSString *)md5String
{
    const char *string = self.UTF8String;
    int length = (int)strlen(string);
    unsigned char bytes[CC_MD5_DIGEST_LENGTH];
    CC_MD5(string, length, bytes);
    return [self stringFromBytes:bytes length:CC_MD5_DIGEST_LENGTH];
}

- (NSString *)sha1String
{
    const char *string = self.UTF8String;
    int length = (int)strlen(string);
    unsigned char bytes[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(string, length, bytes);
    return [self stringFromBytes:bytes length:CC_SHA1_DIGEST_LENGTH];
}

- (NSString *)sha256String
{
    const char *string = self.UTF8String;
    int length = (int)strlen(string);
    unsigned char bytes[CC_SHA256_DIGEST_LENGTH];
    CC_SHA256(string, length, bytes);
    return [self stringFromBytes:bytes length:CC_SHA256_DIGEST_LENGTH];
}

- (NSString *)sha512String
{
    const char *string = self.UTF8String;
    int length = (int)strlen(string);
    unsigned char bytes[CC_SHA512_DIGEST_LENGTH];
    CC_SHA512(string, length, bytes);
    return [self stringFromBytes:bytes length:CC_SHA512_DIGEST_LENGTH];
}

- (NSString *)hmacSHA1StringWithKey:(NSString *)key
{
    NSData *keyData = [key dataUsingEncoding:NSUTF8StringEncoding];
    NSData *messageData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSMutableData *mutableData = [NSMutableData dataWithLength:CC_SHA1_DIGEST_LENGTH];
    CCHmac(kCCHmacAlgSHA1, keyData.bytes, keyData.length, messageData.bytes, messageData.length, mutableData.mutableBytes);
    return [self stringFromBytes:(unsigned char *)mutableData.bytes length:mutableData.length];
}

- (NSString *)hmacSHA256StringWithKey:(NSString *)key
{
    NSData *keyData = [key dataUsingEncoding:NSUTF8StringEncoding];
    NSData *messageData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSMutableData *mutableData = [NSMutableData dataWithLength:CC_SHA256_DIGEST_LENGTH];
    CCHmac(kCCHmacAlgSHA256, keyData.bytes, keyData.length, messageData.bytes, messageData.length, mutableData.mutableBytes);
    return [self stringFromBytes:(unsigned char *)mutableData.bytes length:mutableData.length];
}

- (NSString *)hmacSHA512StringWithKey:(NSString *)key
{
    NSData *keyData = [key dataUsingEncoding:NSUTF8StringEncoding];
    NSData *messageData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSMutableData *mutableData = [NSMutableData dataWithLength:CC_SHA512_DIGEST_LENGTH];
    CCHmac(kCCHmacAlgSHA512, keyData.bytes, keyData.length, messageData.bytes, messageData.length, mutableData.mutableBytes);
    return [self stringFromBytes:(unsigned char *)mutableData.bytes length:mutableData.length];
}

#pragma mark - Helpers

- (NSString *)stringFromBytes:(unsigned char *)bytes length:(NSInteger)length
{
    NSMutableString *mutableString = @"".mutableCopy;
    for (int i = 0; i < length; i++)
        [mutableString appendFormat:@"%02x", bytes[i]];
    return [NSString stringWithString:mutableString];
}

#pragma mark - VRMAX MD5
+ (NSString *)md5StringWithType:(NSString *)type
                       platform:(NSInteger)platform
{
    return [[NSString stringWithFormat:@"%@VRGate%ld",type,platform] md5String];
    
}


+ (NSString *)notMD5StringWithType:(NSString *)type
                          platform:(NSString *)platform
{
    return [NSString stringWithFormat:@"%@VRGate%@",type,platform];
    
}
@end
