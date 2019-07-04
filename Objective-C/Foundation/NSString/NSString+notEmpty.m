//
//  NSString+notEmpty.m
//  WXCategories
//
//  Created by 巴糖 on 2018/8/6.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "NSString+notEmpty.h"

@implementation NSString (notEmpty)



@end


BOOL notEmpty(NSString *str) {
    if (!str) return NO;
    static NSSet *emptySet;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        emptySet = [NSSet setWithObjects:@"", @"(null)", @"null", @"", @"NULL", nil];
    });
    if ([emptySet containsObject:str]) return NO;
    if ([str isKindOfClass:NSNull.class]) return NO;
    return YES;
}
