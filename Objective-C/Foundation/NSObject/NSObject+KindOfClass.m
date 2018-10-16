//
//  NSObject+KindOfClass.m
//  BJCategory
//
//  Created by 许宝吉 on 2018/8/24.
//  Copyright © 2018年 许宝吉. All rights reserved.
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
