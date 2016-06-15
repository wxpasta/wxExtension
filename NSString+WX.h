//
//  NSString+WX.h
//  VRMAX
//
//  Created by AngieMita on 16/6/12.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (WX)

- (unsigned long long)wx_fileSize;

@property(nonatomic,readonly) BOOL wx_isCaptcha;
@property(nonatomic,readonly) BOOL wx_isNumber;
@property(nonatomic,readonly) BOOL wx_isTelephone;

@property(nonatomic,readonly) NSString * wx_trim;
@property(nonatomic,readonly) NSString * wx_simpleTelephone;

@property (readonly) NSString *md5String;
@property (readonly) NSString *sha1String;
@property (readonly) NSString *sha256String;
@property (readonly) NSString *sha512String;

- (NSString *)hmacSHA1StringWithKey:(NSString *)key;
- (NSString *)hmacSHA256StringWithKey:(NSString *)key;
- (NSString *)hmacSHA512StringWithKey:(NSString *)key;

#pragma mark - VRMAX MD5
+ (NSString *)md5StringWithType:(NSString *)type
                       platform:(NSInteger)platform;

+ (NSString *)notMD5StringWithType:(NSString *)type
                          platform:(NSString *)platform;

@end
