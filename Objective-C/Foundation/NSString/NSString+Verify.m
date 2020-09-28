//
//  NSString+Verify.m
//  NemoOfficeClient
//
//  Created by 杨旭东 on 21/04/2017.
//  Copyright © 2017 ainemo. All rights reserved.
//

#import "NSString+Verify.h"
@import Darwin.POSIX.arpa.inet;

@implementation NSString (Verify)

- (BOOL)isValidateByRegex:(NSString *)regex{
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [pre evaluateWithObject:self];
}

- (BOOL)isMail{
    NSString *emailRegex = @"^[a-zA-Z0-9_-][+.a-zA-Z0-9_-]*@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$";
    return [self isValidateByRegex:emailRegex];
}

- (BOOL)isPhoneNumber{
    NSRange range = [self rangeOfString:@"-"];
    if (range.location == NSNotFound) {
        return [self isValidateByRegex:@"^\\d{3,15}$"];
    }else{
        return [self isValidateByRegex:@"^\\+\\d{1,4}-?\\d{5,16}$"];
    }
}

- (BOOL)valid{
#ifdef DEBUG
    return YES;
#else
    return (self.isMail || self.isPhoneNumber);
#endif
}



- (BOOL)pureNumber{
    NSString *pureNumberRegex = @"^[0-9]*$";
    return [self isValidateByRegex:pureNumberRegex];
}

- (BOOL)isNumber{
    NSScanner *scan = [NSScanner scannerWithString:self];
    int var;
    return [scan scanInt:&var] && [scan isAtEnd];
}

- (BOOL)isIPAddress{
    if ([self componentsSeparatedByString:@"."].count == 4) {
        struct sockaddr_in server;
        int result = inet_aton(self.UTF8String, &server.sin_addr);
        if (result > 0) {
            return YES;
        }else{
            return NO;
        }
    }else return NO;
}

- (BOOL)isDomainName{
    NSString *regular = @"^([a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?\\.)+[a-zA-Z]{2,6}";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regular];
    BOOL result = [predicate evaluateWithObject:self];
    return result;
}

- (BOOL)isValidPortNumber {
    if ([self deptNumInputShouldNumber:self] && [self intValue] <= 65535 && [self intValue] >= 0) {
        return YES;
    }
    return NO;
}

- (BOOL)deptNumInputShouldNumber:(NSString *)str {
    if (str.length == 0) {
        return NO;
    }
    NSString *regex = @"[0-9]*";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    if ([pred evaluateWithObject:str]) {
        return YES;
    }
    return NO;
}

- (BOOL)isSimplePhone {
    if (self.length > 0 && (self.length != 11 || ![self hasPrefix:@"1"])) {
        return NO;
    }
    return YES;
}

@end
