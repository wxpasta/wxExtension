#import "NSBundle+WX.h"

@implementation NSBundle (WX)

+ (nullable NSString *)wx_pathForResource:(nullable NSString *)name
{
    return [[NSBundle mainBundle] pathForResource:name ofType:nil];
}

+ (nullable NSDictionary *)wx_dictionaryWithPathForResource:(nullable NSString *)name
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:name ofType:nil];
    return [NSDictionary dictionaryWithContentsOfFile:filePath];
}

+ (nullable NSArray *)wx_arayWithPathForResource:(nullable NSString *)name
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:name ofType:nil];
    return [NSArray arrayWithContentsOfFile:filePath];
}


+ (nullable NSString *)wx_infoDictionary:(nullable NSString *)key
{
    return [NSBundle mainBundle].infoDictionary[key];
}

+ (nullable NSString *)wx_infoPlistForKey:(nullable NSString *)key
{
    return [NSBundle mainBundle].infoDictionary[key];
}
@end
