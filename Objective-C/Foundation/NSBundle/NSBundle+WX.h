
@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (WX)

/**
 *  获取文件的全路径
 */
+ (nullable NSString *)wx_pathForResource:(nullable NSString *)name;
+ (nullable NSString *)wx_pathForResource:(nullable NSString *)name ofType:(nullable NSString *)ext;

/**
 *  读取info.plist某个值
 */
+ (nullable NSString *)wx_bundleWithInfoDictionary:(NSString *)key;


- (nullable NSArray *)wx_loadNibNamed:(nonnull NSString *)name;
- (nullable NSArray *)wx_loadNibClassNamed:(nonnull Class)coustomClass;

@end

NS_ASSUME_NONNULL_END
