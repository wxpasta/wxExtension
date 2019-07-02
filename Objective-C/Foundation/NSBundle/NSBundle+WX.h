@import Foundation;
@import UIKit;

@interface NSBundle (WX)

/**
 *  获取文件的全路径
 */
+ (nullable NSString *)wx_pathForResource:(nullable NSString *)name;
+ (nullable NSString *)wx_pathForResource:(nullable NSString *)name ofType:(nullable NSString *)ext;

/**
 *  读取info.plist某个值
 */
+ (nullable NSString *)wx_bundleWithInfoDictionary:(nullable NSString *)key;


- (nullable NSArray *)wx_loadNibNamed:(nonnull NSString *)name;
- (nullable NSArray *)wx_loadNibClassNamed:(nonnull Class)coustomClass;

@end
