@import Foundation;

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

@end
