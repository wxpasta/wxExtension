//
//  NSString+Hash.h
//
//  Created by Tom Corwine on 5/30/12..
//

#import <Foundation/Foundation.h>

@interface NSString (Hash)

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
