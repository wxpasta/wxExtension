//
//  NSString+UUID.m
//  TestAPP
//
//  Created by magic-devel on 2020/9/14.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import "NSString+UUID.h"
#import <UIKit/UIKit.h>
@implementation NSString (UUID)
/**
 *  @brief  获取随机 UUID 例如 E621E1F8-C36C-495A-93FC-0C247A3E6E5F
 *
 *  @return 随机 UUID
 */
+ (NSString *)getUUID {
    if([[[UIDevice currentDevice] systemVersion] floatValue] > 6.0) {
       return  [[NSUUID UUID] UUIDString];
    }else {
        CFUUIDRef uuidRef = CFUUIDCreate(NULL);
        CFStringRef uuid = CFUUIDCreateString(NULL, uuidRef);
        CFRelease(uuidRef);
        return (__bridge_transfer NSString *)uuid;
    }
}
/**
 *
 *  @brief  毫秒时间戳 例如 1443066826371
 *
 *  @return 毫秒时间戳
 */
+ (NSString *)getUUIDTimestamp {
    return  [[NSNumber numberWithLongLong:[[NSDate date] timeIntervalSince1970]*1000] stringValue];
}

@end
