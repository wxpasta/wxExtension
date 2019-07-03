#import "NSMutableDictionary+WX.h"

@implementation NSMutableDictionary (WX)

+ (NSMutableDictionary *)wx_getKeychainQuery:(NSString *)service
{
    return [NSMutableDictionary dictionaryWithObjectsAndKeys:
            (id)kSecClassGenericPassword,(id)kSecClass,
            service, (id)kSecAttrService,
            service, (id)kSecAttrAccount,
            (id)kSecAttrAccessibleAfterFirstUnlock,(id)kSecAttrAccessible,
            nil];
}

+ (void)wx_saveKeyChain:(NSString *)service data:(id)data
{
    //Get search dictionary
    NSMutableDictionary *keychainQuery = [NSMutableDictionary wx_getKeychainQuery:service];
    //Delete old item before add new item
    SecItemDelete((CFDictionaryRef)keychainQuery);
    //Add new object to search dictionary(Attention:the data format)
    NSData *dataArchiver;
    
    if (@available(iOS 12, *)) {
        NSError *error = nil;
        dataArchiver = [NSKeyedArchiver archivedDataWithRootObject:data
                                             requiringSecureCoding:YES
                                                             error:&error];
    }else{
        dataArchiver = [NSKeyedArchiver archivedDataWithRootObject:data];
    }
    if (dataArchiver) {
        [keychainQuery setObject:dataArchiver forKey:(id)kSecValueData];
        //Add item to keychain with the search dictionary
        SecItemAdd((CFDictionaryRef)keychainQuery, NULL);
    }
}

+ (id)wx_loadKeyChain:(NSString *)service
{
    id ret = nil;
    NSMutableDictionary *keychainQuery = [NSMutableDictionary wx_getKeychainQuery:service];
    //Configure the search setting
    //Since in our simple case we are expecting only a single attribute to be returned (the password) we can set the attribute kSecReturnData to kCFBooleanTrue
    [keychainQuery setObject:(id)kCFBooleanTrue forKey:(id)kSecReturnData];
    [keychainQuery setObject:(id)kSecMatchLimitOne forKey:(id)kSecMatchLimit];
    CFDataRef keyData = NULL;
    if (SecItemCopyMatching((CFDictionaryRef)keychainQuery, (CFTypeRef *)&keyData) == noErr) {
        @try {
            if (@available(iOS 11, *)) {
                NSError *error;
                ret = [NSKeyedUnarchiver unarchivedObjectOfClass:[NSData class] fromData:(__bridge NSData *)keyData error:&error];
                if (error) {
                    NSLog(@"unarchivedObjectOfClass:fromData:error: error: %@", error);
                }
            }else{
                ret = [NSKeyedUnarchiver unarchiveObjectWithData:(__bridge NSData *)keyData];
            }
            
            
            
        } @catch (NSException *e) {
            NSLog(@"Unarchive of %@ failed: %@", service, e);
        } @finally {
        }
    }
    if (keyData)
        CFRelease(keyData);
    return ret;
}

+ (void)wx_deleteKeyChainKeyData:(NSString *)service
{
    NSMutableDictionary *keychainQuery = [NSMutableDictionary wx_getKeychainQuery:service];
    SecItemDelete((CFDictionaryRef)keychainQuery);
}

@end
