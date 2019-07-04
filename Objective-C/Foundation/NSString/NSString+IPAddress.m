//
//  NSString+IPAddress.m
//  WXCategories
//
//  Created by 许宝吉 on 2019/7/4.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "NSString+IPAddress.h"
@import Darwin.POSIX.arpa.inet;

@implementation NSString (IPAddress)

+ (BOOL)isIPAddress:(NSString *)address {
    if ([address componentsSeparatedByString:@"."].count == 4) {
        struct sockaddr_in server;
        int result = inet_aton(address.UTF8String, &server.sin_addr);
        if (result > 0) {
            return YES;
        }else{
            return NO;
        }
    }else {
        return NO;
    }
}

+ (BOOL)isIPAddressWithPort:(NSString *)address {
    NSString *regular = @"^(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d):[0-9]{0,5}";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regular];
    BOOL result = [predicate evaluateWithObject:address];
    return result;
}
@end
