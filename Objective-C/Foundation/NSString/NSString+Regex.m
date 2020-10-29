//
//  NSString+Regex.m
//  TestAPP
//
//  Created by magic-devel on 2020/9/11.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import "NSString+Regex.h"

@implementation NSString (Regex)

- (BOOL)isValidateByRegex:(NSString *)regex {
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [pre evaluateWithObject:self];
}

- (BOOL)isPureNumber {
    NSString *pureNumberRegex = @"^[0-9]*$";
    return [self isValidateByRegex:pureNumberRegex];
}

- (BOOL)isCaptcha {
    NSString *CaptchaRegex1 = @"\\d{6}$";
//    NSString *CaptchaRegex2 = @"\\d{4}$";
    return [self isValidateByRegex:CaptchaRegex1]; //|| [self isValidateByRegex:CaptchaRegex2];
}


@end
