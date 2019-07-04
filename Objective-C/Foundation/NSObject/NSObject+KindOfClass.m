//
//  NSObject+KindOfClass.m
//  WXCategories
//
//  Created by 巴糖 on 2018/8/24.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "NSObject+KindOfClass.h"

@implementation NSObject (KindOfClass)


- (BOOL)isArray{
    if ([self isKindOfClass:[NSArray class]]) {
        // Code probably be executed
        return YES;
    }else{
        return  NO;
    }
}

- (BOOL)isString{
    if ([self isKindOfClass:[NSString class]]) {
        // Code probably be executed
        return YES;
    }else{
        return  NO;
    }
}


@end
