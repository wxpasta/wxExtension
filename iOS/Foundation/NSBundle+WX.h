#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSBundle (WX)

/**
 *  获取文件的全路径
 *
 *  @param name
 *
 *  @return
 */
+ (nullable NSString *)wx_pathForResource:(nullable NSString *)name;
+ (nullable NSString *)wx_pathForResource:(nullable NSString *)name ofType:(nullable NSString *)ext;

/**
 *  获取文件的全路径的字典
 *
 *  @param name
 *
 *  @return
 */
+ (nullable NSDictionary *)wx_dictionaryWithPathForResource:(nullable NSString *)name;
+ (nullable NSDictionary *)wx_dictionaryWithPathForResource:(nullable NSString *)name ofType:(nullable NSString *)ext;
/**
 *  获取文件的全路径的数组
 *
 *  @param name
 *
 *  @return 
 */
+ (nullable NSArray *)wx_arayWithPathForResource:(nullable NSString *)name;
+ (nullable NSArray *)wx_arayWithPathForResource:(nullable NSString *)name ofType:(nullable NSString *)ext;

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

/**
 *  得到数组最后的对象
 *
 *  @param coustomClass
 *
 *  @return
 */
+ (nullable instancetype)wx_loadLastNibNamedClass:(nonnull Class)coustomClass;

/**
 *  得到数组最后的对象
 *
 *  @param nibName
 *
 *  @return
 */
+ (nullable instancetype)wx_loadLastNibNamed:(nonnull NSString *)nibName;

/**
 *  得到数组第一个的对象
 *
 *  @param coustomClass
 *
 *  @return
 */
+ (nullable instancetype)wx_loadFirstNibNamedClass:(nonnull Class)coustomClass;

/**
 *  得到数组第一个的对象
 *
 *  @param nibName
 *
 *  @return
 */
+ (nullable instancetype)wx_loadFirstNibNamed:(nonnull NSString *)nibName;
@end
