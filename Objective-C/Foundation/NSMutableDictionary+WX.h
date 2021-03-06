@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableDictionary (WX)

+ (NSMutableDictionary *)wx_getKeychainQuery:(NSString *)service;

+ (void)wx_saveKeyChain:(NSString *)service data:(id)data;

+ (id)wx_loadKeyChain:(NSString *)service;

+ (void)wx_deleteKeyChainKeyData:(NSString *)service;

@end

NS_ASSUME_NONNULL_END
