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
 *  读取info.plist某个值
 *
 *  @param key
 *
 *  @return
 */
+ (nullable NSString *)wx_bundleWithInfoDictionary:(nullable NSString *)key;


- (nullable NSArray *)wx_loadNibNamed:(nonnull NSString *)name;
- (nullable NSArray *)wx_loadNibClassNamed:(nonnull Class)coustomClass;

@end
