//
//  SDKSettings.m
//  WXCategories
//
//  Created by 许宝吉 on 2019/7/4.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "SDKSettings.h"

@implementation SDKSettings

+ (SDKSettings *)sharedInstance {
    static SDKSettings *settings = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        settings = [[SDKSettings alloc] init];
        settings.serverAddress = @"cloud.xylink.com";
    });
    return settings;
}

- (void)setServerAddress:(NSString *)serverAddress{
    _serverAddress = serverAddress;
    NSLog(@"SDKSettings serverAddress %@",serverAddress);
}

- (void)setExtID:(NSString *)extID{
    _extID = extID;
    NSLog(@"SDKSettings extID %@",extID);
}

@end
