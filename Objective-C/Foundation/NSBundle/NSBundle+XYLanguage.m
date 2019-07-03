//
//  NSBundle+XYLanguage.m
//  NemoOfficeClient
//
//  Created by 巴糖 on 2019/6/4.
//  Copyright © 2019 ainemo. All rights reserved.
//

#import "NSBundle+XYLanguage.h"
@import ObjectiveC.runtime;

static const char _bundle = 0;

@interface BundleEx : NSBundle

@end

@implementation BundleEx

- (NSString *)localizedStringForKey:(NSString *)key
                              value:(NSString *)value
                              table:(NSString *)tableName {
    NSBundle *bundle = objc_getAssociatedObject(self, &_bundle);
    return bundle ? [bundle localizedStringForKey:key value:value table:tableName] : [super localizedStringForKey:key value:value table:tableName];
}

@end

@implementation NSBundle (XYLanguage)

+ (void)setLanguage:(NSString *)language {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        object_setClass([NSBundle mainBundle], [BundleEx class]);
    });
    
    NSString *path = [[NSBundle mainBundle] pathForResource:language ofType:@"lproj"];
    if (path) {
        objc_setAssociatedObject([NSBundle mainBundle], &_bundle, language ? [NSBundle bundleWithPath:path] : nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

@end
