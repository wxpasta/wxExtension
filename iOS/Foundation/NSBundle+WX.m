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

#pragma mark -
+ (nullable NSString *)wx_bundleWithInfoDictionary:(nullable NSString *)key
{
    return [NSBundle mainBundle].infoDictionary[key];
}

#pragma mark -
- (nullable NSArray *)wx_loadNibNamed:(nonnull NSString *)name
{
    return [self loadNibNamed:name owner:nil options:nil];
}

- (nullable NSArray *)wx_loadNibClassNamed:(nonnull Class)coustomClass
{
    return [self wx_loadNibNamed:NSStringFromClass([coustomClass class])];
}

#pragma mark -

@end
