//
//  NSObject+IsObject.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/10/15.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "NSObject+IsObject.h"

@implementation NSObject (IsObject)

- (BOOL)isArrayValueOfObject:(id)object {
    if (object && [object isKindOfClass:[NSArray class]] && ((NSArray *)object).count > 0)
    {
        return YES;
    }else{
        return NO;
    }
}

- (BOOL)isDictionaryValueOfObject:(id)object {
    if (object && [object isKindOfClass:[NSDictionary class]] && ((NSDictionary *)object).allKeys.count > 0)
    {
        return YES;
    }else{
        return NO;
    }
}

@end
