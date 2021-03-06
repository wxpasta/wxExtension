//
//  NSObject+IsObject.m
//  WXCategories
//
//  Created by 巴糖 on 2018/10/15.
//  Copyright © 2018 巴糖. All rights reserved.
//

#import "NSObject+IsObject.h"

@implementation NSObject (IsObject)

- (BOOL)isArrayValueOfObject:(id)object {
    if (object &&
        [object isKindOfClass:[NSArray class]] &&
        ((NSArray *)object).count > 0)
    {
        return YES;
    }else{
        return NO;
    }
}

- (BOOL)isDictionaryValueOfObject:(id)object {
    if (object &&
        [object isKindOfClass:[NSDictionary class]] &&
        ((NSDictionary *)object).allKeys.count > 0)
    {
        return YES;
    }else{
        return NO;
    }
}

@end
