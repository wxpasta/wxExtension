//
//  NSArray+Empty.m
//  BJTestDemo
//
//  Created by 许宝吉 on 2019/3/11.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "NSArray+Empty.h"

@implementation NSArray (Empty)

+ (BOOL)arrayWithEmpty:(nullable NSArray *)array{
    if ([array isKindOfClass:[NSArray class]] && [array count]){
        return NO;
    }else{
        return YES;
    }
}

@end
