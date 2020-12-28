//
//  NSString+WifiHelper.m
//  WXCategories
//
//  Created by magic-devel on 2020/11/10.
//  Copyright © 2020 许宝吉. All rights reserved.
//

#import "NSString+WifiHelper.h"
@import SystemConfiguration.CaptiveNetwork;
@implementation NSString (WifiHelper)


///获取ssid
+ (NSString *) getWifiName {
    NSArray *ifs = CFBridgingRelease(CNCopySupportedInterfaces());
    id info = nil;
    for (NSString *ifnam in ifs) {
       info = (__bridge_transfer id)CNCopyCurrentNetworkInfo((CFStringRef)ifnam);
       if (info && [info count]) {
           break;
       }
    }
    NSDictionary *dic = (NSDictionary *)info;
    if (info[@"SSID"]) {
        NSString * str = (NSString *)[dic objectForKey:@"SSID"];
        return [str lowercaseString];
    }
    return @"";
}

//获取Mac地址
+ (NSString *) getMacAddress {
    NSArray *ifs = CFBridgingRelease(CNCopySupportedInterfaces());
    id info = nil;
    for (NSString *ifnam in ifs) {
       info = (__bridge_transfer id)CNCopyCurrentNetworkInfo((CFStringRef)ifnam);
       if (info && [info count]) {
           break;
       }
    }
    NSDictionary *dic = (NSDictionary *)info;
    if (info[@"BSSID"]) {
        NSString * str = (NSString *)[dic objectForKey:@"BSSID"];
        return str;
    }
    return @"";
}

@end
