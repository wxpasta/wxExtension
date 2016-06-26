#import "NSBundle+WX.h"

@implementation NSBundle (WX)

+ (nullable NSString *)wx_pathForResource:(nullable NSString *)name
{
    return [[NSBundle mainBundle] pathForResource:name ofType:nil];
}

+ (nullable NSDictionary *)wx_dictionaryWithPathForResource:(nullable NSString *)name
{
    NSString *filePath = [NSBundle wx_pathForResource:name];
    return [NSDictionary dictionaryWithContentsOfFile:filePath];
}

+ (nullable NSArray *)wx_arayWithPathForResource:(nullable NSString *)name
{
    NSString *filePath = [NSBundle wx_pathForResource:name];
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
@end
