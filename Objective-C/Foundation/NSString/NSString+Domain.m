//
//  NSString+Domain.m
//  WXCategories
//
//  Created by 许宝吉 on 2019/7/4.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "NSString+Domain.h"

@implementation NSString (Domain)

+ (BOOL)isDomainName:(NSString *)address {
    NSString *regular = @"^([a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?\\.)+[a-zA-Z]{2,6}";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regular];
    BOOL result = [predicate evaluateWithObject:address];
    return result;
}

+ (BOOL)isDomainNameWithPort:(NSString *)address {
    NSString *regular = @"^([a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?\\.)+[a-zA-Z]{2,6}:[0-9]{0,5}";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regular];
    BOOL result = [predicate evaluateWithObject:address];
    return result;
}

@end
