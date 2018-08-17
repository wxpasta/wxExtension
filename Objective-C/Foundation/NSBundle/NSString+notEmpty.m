//
//  NSString+notEmpty.m
//  BJCategory
//
//  Created by 许宝吉 on 2018/8/6.
//  Copyright © 2018年 许宝吉. All rights reserved.
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
