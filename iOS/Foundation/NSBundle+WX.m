#import "NSBundle+WX.h"

@implementation NSBundle (WX)

+ (nullable NSString *)wx_pathForResource:(nullable NSString *)name
{
    return [NSBundle wx_pathForResource:name ofType:nil];
}

+ (nullable NSString *)wx_pathForResource:(nullable NSString *)name ofType:(nullable NSString *)ext
{
    return [[NSBundle mainBundle] pathForResource:name ofType:ext];
}

+ (nullable NSDictionary *)wx_dictionaryWithPathForResource:(nullable NSString *)name
{
    return [NSBundle wx_dictionaryWithPathForResource:name ofType:nil];
}

+ (nullable NSDictionary *)wx_dictionaryWithPathForResource:(nullable NSString *)name  ofType:(nullable NSString *)ext
{
    NSString *filePath = [NSBundle wx_pathForResource:name ofType:ext];
    return [NSDictionary dictionaryWithContentsOfFile:filePath];
}

+ (nullable NSArray *)wx_arayWithPathForResource:(nullable NSString *)name
{
    return [NSBundle wx_arayWithPathForResource:name ofType:nil];
}

+ (nullable NSArray *)wx_arayWithPathForResource:(nullable NSString *)name ofType:(nullable NSString *)ext
{
    NSString *filePath = [NSBundle wx_pathForResource:name ofType:ext];
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

+ (nullable instancetype)wx_loadLastNibNamedClass:(nonnull Class)coustomClass
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([coustomClass class]) owner:nil options:nil] lastObject];
}

+ (nullable instancetype)wx_loadLastNibNamed:(nonnull NSString *)nibName
{
    return [[[NSBundle mainBundle] loadNibNamed:nibName owner:nil options:nil] lastObject];
}

+ (nullable instancetype)wx_loadFirstNibNamedClass:(nonnull Class)coustomClass
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([coustomClass class]) owner:nil options:nil] firstObject];
}

+ (nullable instancetype)wx_loadFirstNibNamed:(nonnull NSString *)nibName
{
    return [[[NSBundle mainBundle] loadNibNamed:nibName owner:nil options:nil] firstObject];
}
@end
