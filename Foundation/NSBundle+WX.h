#import <Foundation/Foundation.h>

@interface NSBundle (WX)

/**
 *  获取文件的全路径
 *
 *  @param name
 *
 *  @return
 */
+ (nullable NSString *)wx_pathForResource:(nullable NSString *)name;

/**
 *  获取文件的全路径的字典
 *
 *  @param name
 *
 *  @return
 */
+ (nullable NSDictionary *)wx_dictionaryWithPathForResource:(nullable NSString *)name;

/**
 *  读取info.plist某个值
 *
 *  @param key
 *
 *  @return
 */
+ (nullable NSString *)wx_infoDictionary:(nullable NSString *)key;

/**
 *  读取info.plist某个值
 *
 *  @param key
 *
 *  @return
 */
+ (nullable NSString *)wx_infoPlistForKey:(nullable NSString *)key;


@end